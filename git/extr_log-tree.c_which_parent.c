
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 scalar_t__ oideq (int *,struct object_id const*) ;

__attribute__((used)) static int which_parent(const struct object_id *oid, const struct commit *commit)
{
 int nth;
 const struct commit_list *parent;

 for (nth = 0, parent = commit->parents; parent; parent = parent->next) {
  if (oideq(&parent->item->object.oid, oid))
   return nth;
  nth++;
 }
 return -1;
}
