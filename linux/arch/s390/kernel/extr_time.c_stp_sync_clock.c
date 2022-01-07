
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stp_sstpi {int dummy; } ;
struct clock_sync_data {unsigned long long clock_delta; int in_sync; int cpus; } ;
struct TYPE_3__ {int tmd; scalar_t__* todoff; } ;


 int EAGAIN ;
 scalar_t__ READ_ONCE (int) ;
 int STP_OP_SYNC ;
 int __udelay (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int chsc_sstpc (int ,int ,int ,unsigned long long*) ;
 int chsc_sstpi (int ,TYPE_1__*,int) ;
 int clock_sync_global (unsigned long long) ;
 int clock_sync_local (unsigned long long) ;
 int cpu_relax () ;
 int disable_sync_clock (int *) ;
 int enable_sync_clock () ;
 TYPE_1__ stp_info ;
 int stp_page ;
 scalar_t__ xchg (int*,int) ;

__attribute__((used)) static int stp_sync_clock(void *data)
{
 struct clock_sync_data *sync = data;
 unsigned long long clock_delta;
 static int first;
 int rc;

 enable_sync_clock();
 if (xchg(&first, 1) == 0) {

  while (atomic_read(&sync->cpus) != 0)
   cpu_relax();
  rc = 0;
  if (stp_info.todoff[0] || stp_info.todoff[1] ||
      stp_info.todoff[2] || stp_info.todoff[3] ||
      stp_info.tmd != 2) {
   rc = chsc_sstpc(stp_page, STP_OP_SYNC, 0,
     &clock_delta);
   if (rc == 0) {
    sync->clock_delta = clock_delta;
    clock_sync_global(clock_delta);
    rc = chsc_sstpi(stp_page, &stp_info,
      sizeof(struct stp_sstpi));
    if (rc == 0 && stp_info.tmd != 2)
     rc = -EAGAIN;
   }
  }
  sync->in_sync = rc ? -EAGAIN : 1;
  xchg(&first, 0);
 } else {

  atomic_dec(&sync->cpus);

  while (READ_ONCE(sync->in_sync) == 0)
   __udelay(1);
 }
 if (sync->in_sync != 1)

  disable_sync_clock(((void*)0));

 clock_sync_local(sync->clock_delta);

 return 0;
}
