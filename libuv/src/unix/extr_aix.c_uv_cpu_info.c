
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nice; int irq; int idle; int sys; int user; } ;
struct TYPE_12__ {int speed; TYPE_1__ cpu_times; int model; } ;
typedef TYPE_2__ uv_cpu_info_t ;
typedef int ps_total ;
struct TYPE_13__ {int name; } ;
typedef TYPE_3__ perfstat_id_t ;
struct TYPE_14__ {int processorHZ; int description; } ;
typedef TYPE_4__ perfstat_cpu_total_t ;
struct TYPE_15__ {int wait; int idle; int sys; int user; } ;
typedef TYPE_5__ perfstat_cpu_t ;


 int FIRST_CPU ;
 int UV_ENOMEM ;
 int UV_ENOSYS ;
 int perfstat_cpu (TYPE_3__*,TYPE_5__*,int,int) ;
 int perfstat_cpu_total (int *,TYPE_4__*,int,int) ;
 int uv__free (TYPE_5__*) ;
 scalar_t__ uv__malloc (int) ;
 int uv__strdup (int ) ;
 int uv__strscpy (int ,int ,int) ;

int uv_cpu_info(uv_cpu_info_t** cpu_infos, int* count) {
  uv_cpu_info_t* cpu_info;
  perfstat_cpu_total_t ps_total;
  perfstat_cpu_t* ps_cpus;
  perfstat_id_t cpu_id;
  int result, ncpus, idx = 0;

  result = perfstat_cpu_total(((void*)0), &ps_total, sizeof(ps_total), 1);
  if (result == -1) {
    return UV_ENOSYS;
  }

  ncpus = result = perfstat_cpu(((void*)0), ((void*)0), sizeof(perfstat_cpu_t), 0);
  if (result == -1) {
    return UV_ENOSYS;
  }

  ps_cpus = (perfstat_cpu_t*) uv__malloc(ncpus * sizeof(perfstat_cpu_t));
  if (!ps_cpus) {
    return UV_ENOMEM;
  }


  uv__strscpy(cpu_id.name, FIRST_CPU, sizeof(cpu_id.name));
  result = perfstat_cpu(&cpu_id, ps_cpus, sizeof(perfstat_cpu_t), ncpus);
  if (result == -1) {
    uv__free(ps_cpus);
    return UV_ENOSYS;
  }

  *cpu_infos = (uv_cpu_info_t*) uv__malloc(ncpus * sizeof(uv_cpu_info_t));
  if (!*cpu_infos) {
    uv__free(ps_cpus);
    return UV_ENOMEM;
  }

  *count = ncpus;

  cpu_info = *cpu_infos;
  while (idx < ncpus) {
    cpu_info->speed = (int)(ps_total.processorHZ / 1000000);
    cpu_info->model = uv__strdup(ps_total.description);
    cpu_info->cpu_times.user = ps_cpus[idx].user;
    cpu_info->cpu_times.sys = ps_cpus[idx].sys;
    cpu_info->cpu_times.idle = ps_cpus[idx].idle;
    cpu_info->cpu_times.irq = ps_cpus[idx].wait;
    cpu_info->cpu_times.nice = 0;
    cpu_info++;
    idx++;
  }

  uv__free(ps_cpus);
  return 0;
}
