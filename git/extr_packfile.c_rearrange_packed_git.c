
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct TYPE_2__ {int packed_git; } ;


 int get_next_packed_git ;
 int llist_mergesort (int ,int ,int ,int ) ;
 int set_next_packed_git ;
 int sort_pack ;

__attribute__((used)) static void rearrange_packed_git(struct repository *r)
{
 r->objects->packed_git = llist_mergesort(
  r->objects->packed_git, get_next_packed_git,
  set_next_packed_git, sort_pack);
}
