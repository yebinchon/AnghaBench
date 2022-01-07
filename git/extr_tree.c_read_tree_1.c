
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct strbuf {int len; int buf; } ;
struct repository {int index; } ;
struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;
struct name_entry {int path; int oid; int mode; } ;
struct commit {int dummy; } ;
typedef int (* read_tree_fn_t ) (int *,struct strbuf*,int ,int ,int,void*) ;
typedef enum interesting { ____Placeholder_interesting } interesting ;



 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int all_entries_interesting ;
 int all_entries_not_interesting ;
 int die (char*,int ,int ,int ) ;
 int entry_not_interesting ;
 int * get_commit_tree_oid (struct commit*) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 struct commit* lookup_commit (struct repository*,int *) ;
 struct tree* lookup_tree (struct repository*,struct object_id*) ;
 int oid_to_hex (int *) ;
 int oidcpy (struct object_id*,int *) ;
 scalar_t__ parse_commit (struct commit*) ;
 scalar_t__ parse_tree (struct tree*) ;
 int strbuf_add (struct strbuf*,int ,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_setlen (struct strbuf*,int) ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;
 int tree_entry_interesting (int ,struct name_entry*,struct strbuf*,int ,struct pathspec const*) ;
 int tree_entry_len (struct name_entry*) ;

__attribute__((used)) static int read_tree_1(struct repository *r,
         struct tree *tree, struct strbuf *base,
         int stage, const struct pathspec *pathspec,
         read_tree_fn_t fn, void *context)
{
 struct tree_desc desc;
 struct name_entry entry;
 struct object_id oid;
 int len, oldlen = base->len;
 enum interesting retval = entry_not_interesting;

 if (parse_tree(tree))
  return -1;

 init_tree_desc(&desc, tree->buffer, tree->size);

 while (tree_entry(&desc, &entry)) {
  if (retval != all_entries_interesting) {
   retval = tree_entry_interesting(r->index, &entry,
       base, 0, pathspec);
   if (retval == all_entries_not_interesting)
    break;
   if (retval == entry_not_interesting)
    continue;
  }

  switch (fn(&entry.oid, base,
      entry.path, entry.mode, stage, context)) {
  case 0:
   continue;
  case 128:
   break;
  default:
   return -1;
  }

  if (S_ISDIR(entry.mode))
   oidcpy(&oid, &entry.oid);
  else if (S_ISGITLINK(entry.mode)) {
   struct commit *commit;

   commit = lookup_commit(r, &entry.oid);
   if (!commit)
    die("Commit %s in submodule path %s%s not found",
        oid_to_hex(&entry.oid),
        base->buf, entry.path);

   if (parse_commit(commit))
    die("Invalid commit %s in submodule path %s%s",
        oid_to_hex(&entry.oid),
        base->buf, entry.path);

   oidcpy(&oid, get_commit_tree_oid(commit));
  }
  else
   continue;

  len = tree_entry_len(&entry);
  strbuf_add(base, entry.path, len);
  strbuf_addch(base, '/');
  retval = read_tree_1(r, lookup_tree(r, &oid),
         base, stage, pathspec,
         fn, context);
  strbuf_setlen(base, oldlen);
  if (retval)
   return -1;
 }
 return 0;
}
