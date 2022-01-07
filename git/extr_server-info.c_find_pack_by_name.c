
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int dummy; } ;
struct pack_info {struct packed_git* p; } ;


 struct pack_info** info ;
 int num_pack ;
 int pack_basename (struct packed_git*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static struct pack_info *find_pack_by_name(const char *name)
{
 int i;
 for (i = 0; i < num_pack; i++) {
  struct packed_git *p = info[i]->p;
  if (!strcmp(pack_basename(p), name))
   return info[i];
 }
 return ((void*)0);
}
