
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CLOCK_SYNC_HAS_STP ;
 int CLOCK_SYNC_STP ;
 size_t EINVAL ;
 size_t EOPNOTSUPP ;
 int clear_bit (int ,int *) ;
 int clock_sync_flags ;
 int clock_sync_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 unsigned int simple_strtoul (char const*,int *,int ) ;
 int stp_online ;
 int stp_work ;
 int test_bit (int ,int *) ;
 int time_sync_wq ;

__attribute__((used)) static ssize_t stp_online_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 unsigned int value;

 value = simple_strtoul(buf, ((void*)0), 0);
 if (value != 0 && value != 1)
  return -EINVAL;
 if (!test_bit(CLOCK_SYNC_HAS_STP, &clock_sync_flags))
  return -EOPNOTSUPP;
 mutex_lock(&clock_sync_mutex);
 stp_online = value;
 if (stp_online)
  set_bit(CLOCK_SYNC_STP, &clock_sync_flags);
 else
  clear_bit(CLOCK_SYNC_STP, &clock_sync_flags);
 queue_work(time_sync_wq, &stp_work);
 mutex_unlock(&clock_sync_mutex);
 return count;
}
