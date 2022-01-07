
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int wildfire_pa_to_nid(unsigned long pa)
{
 return pa >> 36;
}
