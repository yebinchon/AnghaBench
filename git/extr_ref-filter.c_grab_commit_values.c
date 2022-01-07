
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct object {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;
struct atom_value {int s; scalar_t__ value; } ;
struct TYPE_4__ {char* name; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ commit_list_count (struct commit_list*) ;
 int * get_commit_tree_oid (struct commit*) ;
 int oid_to_hex (int *) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strcmp (char const*,char*) ;
 TYPE_2__* used_atom ;
 int used_atom_cnt ;
 int xstrdup (int ) ;
 int xstrfmt (char*,unsigned long) ;

__attribute__((used)) static void grab_commit_values(struct atom_value *val, int deref, struct object *obj)
{
 int i;
 struct commit *commit = (struct commit *) obj;

 for (i = 0; i < used_atom_cnt; i++) {
  const char *name = used_atom[i].name;
  struct atom_value *v = &val[i];
  if (!!deref != (*name == '*'))
   continue;
  if (deref)
   name++;
  if (!strcmp(name, "tree")) {
   v->s = xstrdup(oid_to_hex(get_commit_tree_oid(commit)));
  }
  else if (!strcmp(name, "numparent")) {
   v->value = commit_list_count(commit->parents);
   v->s = xstrfmt("%lu", (unsigned long)v->value);
  }
  else if (!strcmp(name, "parent")) {
   struct commit_list *parents;
   struct strbuf s = STRBUF_INIT;
   for (parents = commit->parents; parents; parents = parents->next) {
    struct commit *parent = parents->item;
    if (parents != commit->parents)
     strbuf_addch(&s, ' ');
    strbuf_addstr(&s, oid_to_hex(&parent->object.oid));
   }
   v->s = strbuf_detach(&s, ((void*)0));
  }
 }
}
