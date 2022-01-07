
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u64 ;


 int HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 scalar_t__ READ_ONCE (int ) ;
 long get_jiffies_64 () ;
 int nx_huge_pages ;
 int nx_huge_pages_recovery_ratio ;

__attribute__((used)) static long get_nx_lpage_recovery_timeout(u64 start_time)
{
 return READ_ONCE(nx_huge_pages) && READ_ONCE(nx_huge_pages_recovery_ratio)
  ? start_time + 60 * HZ - get_jiffies_64()
  : MAX_SCHEDULE_TIMEOUT;
}
