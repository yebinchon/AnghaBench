
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_address_t ;
struct TYPE_6__ {unsigned int user; unsigned int nice; unsigned int sys; unsigned int idle; scalar_t__ irq; } ;
struct TYPE_7__ {unsigned int speed; int model; TYPE_1__ cpu_times; } ;
typedef TYPE_2__ uv_cpu_info_t ;
typedef unsigned int uint64_t ;
typedef int processor_info_array_t ;
struct TYPE_8__ {scalar_t__* cpu_ticks; } ;
typedef TYPE_3__ processor_cpu_load_info_data_t ;
typedef int natural_t ;
typedef int model ;
typedef int mach_msg_type_number_t ;
typedef int cpuspeed ;


 scalar_t__ KERN_SUCCESS ;
 int PROCESSOR_CPU_LOAD_INFO ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int UV__ERR (int ) ;
 int _SC_CLK_TCK ;
 int errno ;
 scalar_t__ host_processor_info (int ,int ,int*,int *,int *) ;
 int mach_host_self () ;
 int mach_task_self () ;
 scalar_t__ sysconf (int ) ;
 scalar_t__ sysctlbyname (char*,...) ;
 TYPE_2__* uv__malloc (int) ;
 int uv__strdup (char*) ;
 int vm_deallocate (int ,int ,int ) ;

int uv_cpu_info(uv_cpu_info_t** cpu_infos, int* count) {
  unsigned int ticks = (unsigned int)sysconf(_SC_CLK_TCK),
               multiplier = ((uint64_t)1000L / ticks);
  char model[512];
  uint64_t cpuspeed;
  size_t size;
  unsigned int i;
  natural_t numcpus;
  mach_msg_type_number_t msg_type;
  processor_cpu_load_info_data_t *info;
  uv_cpu_info_t* cpu_info;

  size = sizeof(model);
  if (sysctlbyname("machdep.cpu.brand_string", &model, &size, ((void*)0), 0) &&
      sysctlbyname("hw.model", &model, &size, ((void*)0), 0)) {
    return UV__ERR(errno);
  }

  size = sizeof(cpuspeed);
  if (sysctlbyname("hw.cpufrequency", &cpuspeed, &size, ((void*)0), 0))
    return UV__ERR(errno);

  if (host_processor_info(mach_host_self(), PROCESSOR_CPU_LOAD_INFO, &numcpus,
                          (processor_info_array_t*)&info,
                          &msg_type) != KERN_SUCCESS) {
    return UV_EINVAL;
  }

  *cpu_infos = uv__malloc(numcpus * sizeof(**cpu_infos));
  if (!(*cpu_infos)) {
    vm_deallocate(mach_task_self(), (vm_address_t)info, msg_type);
    return UV_ENOMEM;
  }

  *count = numcpus;

  for (i = 0; i < numcpus; i++) {
    cpu_info = &(*cpu_infos)[i];

    cpu_info->cpu_times.user = (uint64_t)(info[i].cpu_ticks[0]) * multiplier;
    cpu_info->cpu_times.nice = (uint64_t)(info[i].cpu_ticks[3]) * multiplier;
    cpu_info->cpu_times.sys = (uint64_t)(info[i].cpu_ticks[1]) * multiplier;
    cpu_info->cpu_times.idle = (uint64_t)(info[i].cpu_ticks[2]) * multiplier;
    cpu_info->cpu_times.irq = 0;

    cpu_info->model = uv__strdup(model);
    cpu_info->speed = cpuspeed/1000000;
  }
  vm_deallocate(mach_task_self(), (vm_address_t)info, msg_type);

  return 0;
}
