
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int UNINTERESTING ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id const*,int) ;
 int mark_parents_uninteresting (struct commit*) ;
 int the_repository ;

__attribute__((used)) static int mark_uninteresting(const char *refname, const struct object_id *oid,
         int flags, void *cb_data)
{
 struct commit *commit = lookup_commit_reference_gently(the_repository,
              oid, 1);
 if (!commit)
  return 0;
 commit->object.flags |= UNINTERESTING;
 mark_parents_uninteresting(commit);
 return 0;
}
