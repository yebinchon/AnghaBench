
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree_entry {struct tree_content* tree; TYPE_2__* versions; TYPE_1__* name; } ;
struct tree_content {unsigned int entry_count; struct tree_entry** entries; } ;
struct TYPE_4__ {int oid; int mode; } ;
struct TYPE_3__ {unsigned int str_len; int str_dat; } ;


 int S_ISDIR (int ) ;
 int die (char*) ;
 struct tree_content* dup_tree_content (struct tree_content*) ;
 int fspathncmp (char const*,int ,unsigned int) ;
 scalar_t__ is_null_oid (int *) ;
 int load_tree (struct tree_entry*) ;
 int memcpy (struct tree_entry*,struct tree_entry*,int) ;
 char* strchrnul (char const*,char) ;

__attribute__((used)) static int tree_content_get(
 struct tree_entry *root,
 const char *p,
 struct tree_entry *leaf,
 int allow_root)
{
 struct tree_content *t;
 const char *slash1;
 unsigned int i, n;
 struct tree_entry *e;

 slash1 = strchrnul(p, '/');
 n = slash1 - p;
 if (!n && !allow_root)
  die("Empty path component found in input");

 if (!root->tree)
  load_tree(root);

 if (!n) {
  e = root;
  goto found_entry;
 }

 t = root->tree;
 for (i = 0; i < t->entry_count; i++) {
  e = t->entries[i];
  if (e->name->str_len == n && !fspathncmp(p, e->name->str_dat, n)) {
   if (!*slash1)
    goto found_entry;
   if (!S_ISDIR(e->versions[1].mode))
    return 0;
   if (!e->tree)
    load_tree(e);
   return tree_content_get(e, slash1 + 1, leaf, 0);
  }
 }
 return 0;

found_entry:
 memcpy(leaf, e, sizeof(*leaf));
 if (e->tree && is_null_oid(&e->versions[1].oid))
  leaf->tree = dup_tree_content(e->tree);
 else
  leaf->tree = ((void*)0);
 return 1;
}
