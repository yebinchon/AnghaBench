
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct object {int dummy; } ;
struct all_refs_cb {int all_flags; TYPE_1__* all_revs; } ;
struct TYPE_4__ {int ref_excludes; } ;


 int REV_CMD_REF ;
 int add_pending_oid (TYPE_1__*,char const*,struct object_id const*,int ) ;
 int add_rev_cmdline (TYPE_1__*,struct object*,char const*,int ,int ) ;
 struct object* get_reference (TYPE_1__*,char const*,struct object_id const*,int ) ;
 scalar_t__ ref_excluded (int ,char const*) ;

__attribute__((used)) static int handle_one_ref(const char *path, const struct object_id *oid,
     int flag, void *cb_data)
{
 struct all_refs_cb *cb = cb_data;
 struct object *object;

 if (ref_excluded(cb->all_revs->ref_excludes, path))
     return 0;

 object = get_reference(cb->all_revs, path, oid, cb->all_flags);
 add_rev_cmdline(cb->all_revs, object, path, REV_CMD_REF, cb->all_flags);
 add_pending_oid(cb->all_revs, path, oid, cb->all_flags);
 return 0;
}
