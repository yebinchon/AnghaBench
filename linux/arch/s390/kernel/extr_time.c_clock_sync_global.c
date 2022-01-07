
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptff_qto {int tod_epoch_difference; } ;
typedef scalar_t__ s64 ;
typedef int qto ;
struct TYPE_2__ {int ts_dir; unsigned long ts_end; int tb_update_count; } ;


 int PTFF_QTO ;
 int abs (unsigned long long) ;
 int atomic_notifier_call_chain (int *,int ,unsigned long long*) ;
 unsigned long get_tod_clock () ;
 int lpar_offset ;
 int panic (char*,unsigned long long) ;
 scalar_t__ ptff (struct ptff_qto*,int,int ) ;
 scalar_t__ ptff_query (int ) ;
 int s390_epoch_delta_notifier ;
 int * tod_clock_base ;
 unsigned long long tod_steering_delta ;
 unsigned long tod_steering_end ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* vdso_data ;

__attribute__((used)) static void clock_sync_global(unsigned long long delta)
{
 unsigned long now, adj;
 struct ptff_qto qto;


 *(unsigned long long *) &tod_clock_base[1] += delta;
 if (*(unsigned long long *) &tod_clock_base[1] < delta)

  tod_clock_base[0]++;

 vdso_data->tb_update_count++;
 now = get_tod_clock();
 adj = tod_steering_end - now;
 if (unlikely((s64) adj >= 0))

  tod_steering_delta = (tod_steering_delta < 0) ?
   -(adj >> 15) : (adj >> 15);
 tod_steering_delta += delta;
 if ((abs(tod_steering_delta) >> 48) != 0)
  panic("TOD clock sync offset %lli is too large to drift\n",
        tod_steering_delta);
 tod_steering_end = now + (abs(tod_steering_delta) << 15);
 vdso_data->ts_dir = (tod_steering_delta < 0) ? 0 : 1;
 vdso_data->ts_end = tod_steering_end;
 vdso_data->tb_update_count++;

 if (ptff_query(PTFF_QTO) && ptff(&qto, sizeof(qto), PTFF_QTO) == 0)
  lpar_offset = qto.tod_epoch_difference;

 atomic_notifier_call_chain(&s390_epoch_delta_notifier, 0, &delta);
}
