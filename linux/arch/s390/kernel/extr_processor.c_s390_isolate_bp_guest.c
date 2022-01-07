
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int TIF_ISOLATE_BP_GUEST ;
 int set_thread_flag (int ) ;
 int test_facility (int) ;

int s390_isolate_bp_guest(void)
{
 if (!test_facility(82))
  return -EOPNOTSUPP;
 set_thread_flag(TIF_ISOLATE_BP_GUEST);
 return 0;
}
