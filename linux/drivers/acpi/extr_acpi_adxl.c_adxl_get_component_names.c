
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ adxl_component_names ;

const char * const *adxl_get_component_names(void)
{
 return (const char * const *)adxl_component_names;
}
