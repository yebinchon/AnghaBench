
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hc_dynlib_t ;


 int dlclose (int ) ;

int hc_dlclose (hc_dynlib_t handle)
{
  return dlclose (handle);
}
