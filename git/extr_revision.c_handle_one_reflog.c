
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct all_refs_cb {int name_for_errormsg; int wt; scalar_t__ warned_bad_reflog; } ;


 struct strbuf STRBUF_INIT ;
 int get_main_ref_store (int ) ;
 int handle_one_reflog_ent ;
 int refs_for_each_reflog_ent (int ,int ,int ,void*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_worktree_ref (int ,struct strbuf*,char const*) ;
 int the_repository ;

__attribute__((used)) static int handle_one_reflog(const char *refname_in_wt,
        const struct object_id *oid,
        int flag, void *cb_data)
{
 struct all_refs_cb *cb = cb_data;
 struct strbuf refname = STRBUF_INIT;

 cb->warned_bad_reflog = 0;
 strbuf_worktree_ref(cb->wt, &refname, refname_in_wt);
 cb->name_for_errormsg = refname.buf;
 refs_for_each_reflog_ent(get_main_ref_store(the_repository),
     refname.buf,
     handle_one_reflog_ent, cb_data);
 strbuf_release(&refname);
 return 0;
}
