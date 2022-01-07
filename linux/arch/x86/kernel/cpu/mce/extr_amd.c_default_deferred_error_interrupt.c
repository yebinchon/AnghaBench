
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFERRED_ERROR_VECTOR ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void default_deferred_error_interrupt(void)
{
 pr_err("Unexpected deferred interrupt at vector %x\n", DEFERRED_ERROR_VECTOR);
}
