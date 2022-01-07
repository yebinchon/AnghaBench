
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct entry {int ttl; struct commit* commit; } ;
struct TYPE_4__ {scalar_t__ nr; } ;
struct data {scalar_t__ non_common_revs; TYPE_2__ rev_list; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct TYPE_3__ {int flags; struct object_id const oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int COMMON ;
 int POPPED ;
 int free (struct entry*) ;
 int parse_commit (struct commit*) ;
 struct entry* prio_queue_get (TYPE_2__*) ;
 int push_parent (struct data*,struct entry*,int ) ;

__attribute__((used)) static const struct object_id *get_rev(struct data *data)
{
 struct commit *to_send = ((void*)0);

 while (to_send == ((void*)0)) {
  struct entry *entry;
  struct commit *commit;
  struct commit_list *p;
  int parent_pushed = 0;

  if (data->rev_list.nr == 0 || data->non_common_revs == 0)
   return ((void*)0);

  entry = prio_queue_get(&data->rev_list);
  commit = entry->commit;
  commit->object.flags |= POPPED;
  if (!(commit->object.flags & COMMON))
   data->non_common_revs--;

  if (!(commit->object.flags & COMMON) && !entry->ttl)
   to_send = commit;

  parse_commit(commit);
  for (p = commit->parents; p; p = p->next)
   parent_pushed |= push_parent(data, entry, p->item);

  if (!(commit->object.flags & COMMON) && !parent_pushed)





   to_send = commit;

  free(entry);
 }

 return &to_send->object.oid;
}
