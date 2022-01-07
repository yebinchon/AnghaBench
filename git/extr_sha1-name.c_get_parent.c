
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_3__* item; } ;
struct TYPE_4__ {int oid; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;
typedef enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;
struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;


 int FOUND ;
 int GET_OID_COMMITTISH ;
 int MISSING_OBJECT ;
 int get_oid_1 (struct repository*,char const*,int,struct object_id*,int ) ;
 struct commit* lookup_commit_reference (struct repository*,struct object_id*) ;
 int oidcpy (struct object_id*,int *) ;
 scalar_t__ parse_commit (struct commit*) ;

__attribute__((used)) static enum get_oid_result get_parent(struct repository *r,
          const char *name, int len,
          struct object_id *result, int idx)
{
 struct object_id oid;
 enum get_oid_result ret = get_oid_1(r, name, len, &oid,
         GET_OID_COMMITTISH);
 struct commit *commit;
 struct commit_list *p;

 if (ret)
  return ret;
 commit = lookup_commit_reference(r, &oid);
 if (parse_commit(commit))
  return MISSING_OBJECT;
 if (!idx) {
  oidcpy(result, &commit->object.oid);
  return FOUND;
 }
 p = commit->parents;
 while (p) {
  if (!--idx) {
   oidcpy(result, &p->item->object.oid);
   return FOUND;
  }
  p = p->next;
 }
 return MISSING_OBJECT;
}
