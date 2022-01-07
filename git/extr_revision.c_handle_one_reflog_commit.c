
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct object {int flags; } ;
struct all_refs_cb {int warned_bad_reflog; int name_for_errormsg; TYPE_1__* all_revs; int all_flags; } ;
struct TYPE_2__ {int repo; } ;


 int add_pending_object (TYPE_1__*,struct object*,char*) ;
 int is_null_oid (struct object_id*) ;
 struct object* parse_object (int ,struct object_id*) ;
 int warning (char*,int ) ;

__attribute__((used)) static void handle_one_reflog_commit(struct object_id *oid, void *cb_data)
{
 struct all_refs_cb *cb = cb_data;
 if (!is_null_oid(oid)) {
  struct object *o = parse_object(cb->all_revs->repo, oid);
  if (o) {
   o->flags |= cb->all_flags;

   add_pending_object(cb->all_revs, o, "");
  }
  else if (!cb->warned_bad_reflog) {
   warning("reflog of '%s' references pruned commits",
    cb->name_for_errormsg);
   cb->warned_bad_reflog = 1;
  }
 }
}
