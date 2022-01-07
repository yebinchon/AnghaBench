
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmov_test_return ;
 scalar_t__ host_has_cmov ;
 int longjmp (int ,int) ;

__attribute__((used)) static void cmov_sigill_test_handler(int sig)
{
 host_has_cmov = 0;
 longjmp(cmov_test_return, 1);
}
