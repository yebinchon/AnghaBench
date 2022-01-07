
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int opal_tracepoint_refcount ;

void opal_tracepoint_unregfunc(void)
{
 opal_tracepoint_refcount--;
}
