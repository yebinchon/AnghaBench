
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union topology_entry {int nl; } ;
struct topology_core {int dummy; } ;
struct topology_container {int dummy; } ;



__attribute__((used)) static union topology_entry *next_tle(union topology_entry *tle)
{
 if (!tle->nl)
  return (union topology_entry *)((struct topology_core *)tle + 1);
 return (union topology_entry *)((struct topology_container *)tle + 1);
}
