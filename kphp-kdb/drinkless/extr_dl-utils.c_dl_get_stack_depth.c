
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace (void**,int) ;
 int max_depth ;
 int uncounted_depth ;

int dl_get_stack_depth (void) {


  static void *tmp[50];
  int res = backtrace (tmp, 50) - 12;
  return res < 0 ? 0 : res;
}
