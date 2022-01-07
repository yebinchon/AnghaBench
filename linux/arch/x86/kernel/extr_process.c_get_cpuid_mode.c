
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_NOCPUID ;
 int test_thread_flag (int ) ;

__attribute__((used)) static int get_cpuid_mode(void)
{
 return !test_thread_flag(TIF_NOCPUID);
}
