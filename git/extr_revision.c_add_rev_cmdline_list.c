
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int dummy; } ;
struct object {int oid; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct TYPE_2__ {struct object object; } ;


 int add_rev_cmdline (struct rev_info*,struct object*,int ,int,unsigned int) ;
 int oid_to_hex (int *) ;

__attribute__((used)) static void add_rev_cmdline_list(struct rev_info *revs,
     struct commit_list *commit_list,
     int whence,
     unsigned flags)
{
 while (commit_list) {
  struct object *object = &commit_list->item->object;
  add_rev_cmdline(revs, object, oid_to_hex(&object->oid),
    whence, flags);
  commit_list = commit_list->next;
 }
}
