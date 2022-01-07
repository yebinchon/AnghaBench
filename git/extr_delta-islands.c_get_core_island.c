
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_island {int dummy; } ;
typedef scalar_t__ khiter_t ;


 scalar_t__ core_island_name ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get_str (int ,scalar_t__) ;
 struct remote_island* kh_value (int ,scalar_t__) ;
 int remote_islands ;

__attribute__((used)) static struct remote_island *get_core_island(void)
{
 if (core_island_name) {
  khiter_t pos = kh_get_str(remote_islands, core_island_name);
  if (pos < kh_end(remote_islands))
   return kh_value(remote_islands, pos);
 }

 return ((void*)0);
}
