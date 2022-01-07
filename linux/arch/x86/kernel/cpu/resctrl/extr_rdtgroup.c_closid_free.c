
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closid_free_map ;

void closid_free(int closid)
{
 closid_free_map |= 1 << closid;
}
