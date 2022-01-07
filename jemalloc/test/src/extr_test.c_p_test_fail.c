
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int malloc_cprintf (int *,int *,char*,char const*,char const*) ;
 int test_status ;
 int test_status_fail ;

void
p_test_fail(const char *prefix, const char *message) {
 malloc_cprintf(((void*)0), ((void*)0), "%s%s\n", prefix, message);
 test_status = test_status_fail;
}
