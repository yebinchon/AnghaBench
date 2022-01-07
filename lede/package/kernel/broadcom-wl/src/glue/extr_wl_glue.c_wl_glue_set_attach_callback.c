
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wl_glue_attach_cb_t ;


 int attach_cb ;

void wl_glue_set_attach_callback(wl_glue_attach_cb_t cb)
{
 attach_cb = cb;
}
