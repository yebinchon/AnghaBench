
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct object_id {int dummy; } ;


 int UPDATE_REFS_MSG_ON_ERR ;
 int _ (char*) ;
 int apply_autostash (struct replay_opts*) ;
 int error (int ,...) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int oid_to_hex (struct object_id const*) ;
 char* reflog_message (struct replay_opts*,char*,char*,char const*) ;
 scalar_t__ run_git_checkout (struct repository*,struct replay_opts*,int ,char const*) ;
 int sequencer_remove_state (struct replay_opts*) ;
 int update_ref (int *,char*,struct object_id*,int *,int ,int ) ;

__attribute__((used)) static int checkout_onto(struct repository *r, struct replay_opts *opts,
    const char *onto_name, const struct object_id *onto,
    const char *orig_head)
{
 struct object_id oid;
 const char *action = reflog_message(opts, "start", "checkout %s", onto_name);

 if (get_oid(orig_head, &oid))
  return error(_("%s: not a valid OID"), orig_head);

 if (run_git_checkout(r, opts, oid_to_hex(onto), action)) {
  apply_autostash(opts);
  sequencer_remove_state(opts);
  return error(_("could not detach HEAD"));
 }

 return update_ref(((void*)0), "ORIG_HEAD", &oid, ((void*)0), 0, UPDATE_REFS_MSG_ON_ERR);
}
