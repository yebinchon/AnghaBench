
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct repository {TYPE_1__* objects; } ;
struct packed_git {int dummy; } ;
struct multi_pack_index {scalar_t__ num_packs; struct multi_pack_index* next; } ;
struct TYPE_2__ {struct packed_git* packed_git; struct multi_pack_index* multi_pack_index; } ;


 int prepare_midx_pack (struct repository*,struct multi_pack_index*,scalar_t__) ;
 int prepare_packed_git (struct repository*) ;

struct packed_git *get_all_packs(struct repository *r)
{
 struct multi_pack_index *m;

 prepare_packed_git(r);
 for (m = r->objects->multi_pack_index; m; m = m->next) {
  uint32_t i;
  for (i = 0; i < m->num_packs; i++)
   prepare_midx_pack(r, m, i);
 }

 return r->objects->packed_git;
}
