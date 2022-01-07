
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ nice; scalar_t__ irq; scalar_t__ idle; scalar_t__ sys; scalar_t__ user; } ;
struct TYPE_11__ {TYPE_2__ cpu_times; int * model; scalar_t__ speed; } ;
typedef TYPE_3__ uv_cpu_info_t ;
typedef int kstat_t ;
struct TYPE_9__ {scalar_t__ ui64; scalar_t__ i64; scalar_t__ i32; } ;
struct TYPE_12__ {scalar_t__ data_type; TYPE_1__ value; } ;
typedef TYPE_4__ kstat_named_t ;
typedef int kstat_ctl_t ;


 scalar_t__ KSTAT_DATA_INT32 ;
 scalar_t__ KSTAT_DATA_INT64 ;
 scalar_t__ KSTAT_DATA_STRING ;
 scalar_t__ KSTAT_DATA_UINT64 ;
 int KSTAT_NAMED_STR_PTR (TYPE_4__*) ;
 int UV_ENOMEM ;
 int UV_EPERM ;
 int assert (int) ;
 int kstat_close (int *) ;
 TYPE_4__* kstat_data_lookup (int *,char*) ;
 int * kstat_lookup (int *,char*,int,char*) ;
 int * kstat_open () ;
 int kstat_read (int *,int *,int *) ;
 TYPE_3__* uv__malloc (int) ;
 int * uv__strdup (int ) ;

int uv_cpu_info(uv_cpu_info_t** cpu_infos, int* count) {
  int lookup_instance;
  kstat_ctl_t *kc;
  kstat_t *ksp;
  kstat_named_t *knp;
  uv_cpu_info_t* cpu_info;

  kc = kstat_open();
  if (kc == ((void*)0))
    return UV_EPERM;


  lookup_instance = 0;
  while ((ksp = kstat_lookup(kc, (char*) "cpu_info", lookup_instance, ((void*)0)))) {
    lookup_instance++;
  }

  *cpu_infos = uv__malloc(lookup_instance * sizeof(**cpu_infos));
  if (!(*cpu_infos)) {
    kstat_close(kc);
    return UV_ENOMEM;
  }

  *count = lookup_instance;

  cpu_info = *cpu_infos;
  lookup_instance = 0;
  while ((ksp = kstat_lookup(kc, (char*) "cpu_info", lookup_instance, ((void*)0)))) {
    if (kstat_read(kc, ksp, ((void*)0)) == -1) {
      cpu_info->speed = 0;
      cpu_info->model = ((void*)0);
    } else {
      knp = kstat_data_lookup(ksp, (char*) "clock_MHz");
      assert(knp->data_type == KSTAT_DATA_INT32 ||
             knp->data_type == KSTAT_DATA_INT64);
      cpu_info->speed = (knp->data_type == KSTAT_DATA_INT32) ? knp->value.i32
                                                             : knp->value.i64;

      knp = kstat_data_lookup(ksp, (char*) "brand");
      assert(knp->data_type == KSTAT_DATA_STRING);
      cpu_info->model = uv__strdup(KSTAT_NAMED_STR_PTR(knp));
    }

    lookup_instance++;
    cpu_info++;
  }

  cpu_info = *cpu_infos;
  lookup_instance = 0;
  for (;;) {
    ksp = kstat_lookup(kc, (char*) "cpu", lookup_instance, (char*) "sys");

    if (ksp == ((void*)0))
      break;

    if (kstat_read(kc, ksp, ((void*)0)) == -1) {
      cpu_info->cpu_times.user = 0;
      cpu_info->cpu_times.nice = 0;
      cpu_info->cpu_times.sys = 0;
      cpu_info->cpu_times.idle = 0;
      cpu_info->cpu_times.irq = 0;
    } else {
      knp = kstat_data_lookup(ksp, (char*) "cpu_ticks_user");
      assert(knp->data_type == KSTAT_DATA_UINT64);
      cpu_info->cpu_times.user = knp->value.ui64;

      knp = kstat_data_lookup(ksp, (char*) "cpu_ticks_kernel");
      assert(knp->data_type == KSTAT_DATA_UINT64);
      cpu_info->cpu_times.sys = knp->value.ui64;

      knp = kstat_data_lookup(ksp, (char*) "cpu_ticks_idle");
      assert(knp->data_type == KSTAT_DATA_UINT64);
      cpu_info->cpu_times.idle = knp->value.ui64;

      knp = kstat_data_lookup(ksp, (char*) "intr");
      assert(knp->data_type == KSTAT_DATA_UINT64);
      cpu_info->cpu_times.irq = knp->value.ui64;
      cpu_info->cpu_times.nice = 0;
    }

    lookup_instance++;
    cpu_info++;
  }

  kstat_close(kc);

  return 0;
}
