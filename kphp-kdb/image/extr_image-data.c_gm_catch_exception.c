
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_stack {int dummy; } ;
typedef int ExceptionInfo ;


 int CatchException (int *) ;
 int DestroyExceptionInfo (int *) ;
 int fail_exception (struct forth_stack*,int *) ;

__attribute__((used)) static void gm_catch_exception (struct forth_stack *st, ExceptionInfo *e_info) {
  fail_exception (st, e_info);
  CatchException (e_info);
  DestroyExceptionInfo (e_info);
}
