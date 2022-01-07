
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entry {struct commit* commit; } ;
struct data {int non_common_revs; int rev_list; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int COMMON ;
 int SEEN ;
 int prio_queue_put (int *,struct entry*) ;
 struct entry* xcalloc (int,int) ;

__attribute__((used)) static struct entry *rev_list_push(struct data *data, struct commit *commit, int mark)
{
 struct entry *entry;
 commit->object.flags |= mark | SEEN;

 entry = xcalloc(1, sizeof(*entry));
 entry->commit = commit;
 prio_queue_put(&data->rev_list, entry);

 if (!(mark & COMMON))
  data->non_common_revs++;
 return entry;
}
