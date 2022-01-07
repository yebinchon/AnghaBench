
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int opal_tracepoint_refcount ;

int opal_tracepoint_regfunc(void)
{
 opal_tracepoint_refcount++;
 return 0;
}
