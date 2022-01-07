
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct commit {struct commit_list* parents; } ;
struct bitmap {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int SEEN ;
 int add_to_include_set (struct bitmap*,struct commit*) ;
 int mark_as_seen (struct object*) ;

__attribute__((used)) static int
should_include(struct commit *commit, void *_data)
{
 struct bitmap *base = _data;

 if (!add_to_include_set(base, commit)) {
  struct commit_list *parent = commit->parents;

  mark_as_seen((struct object *)commit);

  while (parent) {
   parent->item->object.flags |= SEEN;
   mark_as_seen((struct object *)parent->item);
   parent = parent->next;
  }

  return 0;
 }

 return 1;
}
