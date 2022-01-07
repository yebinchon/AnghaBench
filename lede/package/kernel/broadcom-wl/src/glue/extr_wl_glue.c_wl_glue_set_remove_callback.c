
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wl_glue_remove_cb_t ;


 int remove_cb ;

void wl_glue_set_remove_callback(wl_glue_remove_cb_t cb)
{
 remove_cb = cb;
}
