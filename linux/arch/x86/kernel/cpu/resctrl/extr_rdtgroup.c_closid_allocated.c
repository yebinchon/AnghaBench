
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closid_free_map ;

__attribute__((used)) static bool closid_allocated(unsigned int closid)
{
 return (closid_free_map & (1 << closid)) == 0;
}
