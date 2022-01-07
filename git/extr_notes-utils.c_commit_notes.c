
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int * update_ref; int dirty; int initialized; } ;


 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_DIE_ON_ERR ;
 int _ (char*) ;
 int create_notes_commit (struct repository*,struct notes_tree*,int *,int ,int ,struct object_id*) ;
 struct notes_tree default_notes_tree ;
 int die (int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete_line (struct strbuf*) ;
 int strbuf_insert (struct strbuf*,int ,char*,int) ;
 int strbuf_release (struct strbuf*) ;
 int update_ref (int ,int *,struct object_id*,int *,int ,int ) ;

void commit_notes(struct repository *r, struct notes_tree *t, const char *msg)
{
 struct strbuf buf = STRBUF_INIT;
 struct object_id commit_oid;

 if (!t)
  t = &default_notes_tree;
 if (!t->initialized || !t->update_ref || !*t->update_ref)
  die(_("Cannot commit uninitialized/unreferenced notes tree"));
 if (!t->dirty)
  return;


 strbuf_addstr(&buf, msg);
 strbuf_complete_line(&buf);

 create_notes_commit(r, t, ((void*)0), buf.buf, buf.len, &commit_oid);
 strbuf_insert(&buf, 0, "notes: ", 7);
 update_ref(buf.buf, t->update_ref, &commit_oid, ((void*)0), 0,
     UPDATE_REFS_DIE_ON_ERR);

 strbuf_release(&buf);
}
