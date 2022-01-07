
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct stp_sstpi {int dummy; } ;
struct clock_sync_data {int cpus; } ;
typedef int stp_sync ;
struct TYPE_3__ {scalar_t__ c; } ;


 scalar_t__ HZ ;
 int STP_OP_CTRL ;
 int atomic_set (int *,scalar_t__) ;
 scalar_t__ check_sync_clock () ;
 int chsc_sstpc (int ,int ,int,int *) ;
 int chsc_sstpi (int ,TYPE_1__*,int) ;
 int cpu_online_mask ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int memset (struct clock_sync_data*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ num_online_cpus () ;
 int stop_machine_cpuslocked (int ,struct clock_sync_data*,int ) ;
 TYPE_1__ stp_info ;
 int stp_online ;
 int stp_page ;
 int stp_sync_clock ;
 int stp_timer ;
 int stp_work_mutex ;

__attribute__((used)) static void stp_work_fn(struct work_struct *work)
{
 struct clock_sync_data stp_sync;
 int rc;


 mutex_lock(&stp_work_mutex);

 if (!stp_online) {
  chsc_sstpc(stp_page, STP_OP_CTRL, 0x0000, ((void*)0));
  del_timer_sync(&stp_timer);
  goto out_unlock;
 }

 rc = chsc_sstpc(stp_page, STP_OP_CTRL, 0xb0e0, ((void*)0));
 if (rc)
  goto out_unlock;

 rc = chsc_sstpi(stp_page, &stp_info, sizeof(struct stp_sstpi));
 if (rc || stp_info.c == 0)
  goto out_unlock;


 if (check_sync_clock())
  goto out_unlock;

 memset(&stp_sync, 0, sizeof(stp_sync));
 cpus_read_lock();
 atomic_set(&stp_sync.cpus, num_online_cpus() - 1);
 stop_machine_cpuslocked(stp_sync_clock, &stp_sync, cpu_online_mask);
 cpus_read_unlock();

 if (!check_sync_clock())




  mod_timer(&stp_timer, jiffies + HZ);

out_unlock:
 mutex_unlock(&stp_work_mutex);
}
