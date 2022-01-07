
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int COMPLETE ;
 int commit_list_insert (struct commit*,int *) ;
 int complete ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id const*,int) ;
 int the_repository ;

__attribute__((used)) static int mark_complete(const char *path, const struct object_id *oid,
    int flag, void *cb_data)
{
 struct commit *commit = lookup_commit_reference_gently(the_repository,
              oid, 1);

 if (commit) {
  commit->object.flags |= COMPLETE;
  commit_list_insert(commit, &complete);
 }
 return 0;
}
