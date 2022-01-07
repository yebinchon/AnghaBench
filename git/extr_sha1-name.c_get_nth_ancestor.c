
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; TYPE_2__* parents; } ;
typedef enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;
struct TYPE_4__ {struct commit* item; } ;


 int FOUND ;
 int GET_OID_COMMITTISH ;
 int MISSING_OBJECT ;
 int get_oid_1 (struct repository*,char const*,int,struct object_id*,int ) ;
 struct commit* lookup_commit_reference (struct repository*,struct object_id*) ;
 int oidcpy (struct object_id*,int *) ;
 scalar_t__ parse_commit (struct commit*) ;

__attribute__((used)) static enum get_oid_result get_nth_ancestor(struct repository *r,
         const char *name, int len,
         struct object_id *result,
         int generation)
{
 struct object_id oid;
 struct commit *commit;
 int ret;

 ret = get_oid_1(r, name, len, &oid, GET_OID_COMMITTISH);
 if (ret)
  return ret;
 commit = lookup_commit_reference(r, &oid);
 if (!commit)
  return MISSING_OBJECT;

 while (generation--) {
  if (parse_commit(commit) || !commit->parents)
   return MISSING_OBJECT;
  commit = commit->parents->item;
 }
 oidcpy(result, &commit->object.oid);
 return FOUND;
}
