
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
struct tree_entry {struct tree_content* tree; TYPE_2__* versions; TYPE_1__* name; } ;
struct tree_content {unsigned int entry_count; struct tree_entry** entries; } ;
struct object_id {int dummy; } ;
struct TYPE_6__ {unsigned int hexsz; } ;
struct TYPE_5__ {int mode; int oid; } ;
struct TYPE_4__ {unsigned int str_len; int str_dat; } ;


 int GIT_MAX_HEXSZ ;
 scalar_t__ S_ISDIR (int ) ;
 int construct_path_with_fanout (char*,unsigned char,char*) ;
 int die (char*,char*) ;
 int get_oid_hex (char*,struct object_id*) ;
 int load_tree (struct tree_entry*) ;
 int memcpy (char*,int ,int) ;
 int strcmp (char*,char*) ;
 TYPE_3__* the_hash_algo ;
 int tree_content_remove (struct tree_entry*,char*,struct tree_entry*,int ) ;
 int tree_content_set (struct tree_entry*,char*,int *,int ,struct tree_content*) ;

__attribute__((used)) static uintmax_t do_change_note_fanout(
  struct tree_entry *orig_root, struct tree_entry *root,
  char *hex_oid, unsigned int hex_oid_len,
  char *fullpath, unsigned int fullpath_len,
  unsigned char fanout)
{
 struct tree_content *t;
 struct tree_entry *e, leaf;
 unsigned int i, tmp_hex_oid_len, tmp_fullpath_len;
 uintmax_t num_notes = 0;
 struct object_id oid;

 char realpath[GIT_MAX_HEXSZ + ((GIT_MAX_HEXSZ / 2) - 1) + 1];
 const unsigned hexsz = the_hash_algo->hexsz;

 if (!root->tree)
  load_tree(root);
 t = root->tree;

 for (i = 0; t && i < t->entry_count; i++) {
  e = t->entries[i];
  tmp_hex_oid_len = hex_oid_len + e->name->str_len;
  tmp_fullpath_len = fullpath_len;
  if (!e->versions[1].mode ||
      tmp_hex_oid_len > hexsz ||
      e->name->str_len % 2)
   continue;


  memcpy(hex_oid + hex_oid_len, e->name->str_dat,
         e->name->str_len);
  if (tmp_fullpath_len)
   fullpath[tmp_fullpath_len++] = '/';
  memcpy(fullpath + tmp_fullpath_len, e->name->str_dat,
         e->name->str_len);
  tmp_fullpath_len += e->name->str_len;
  fullpath[tmp_fullpath_len] = '\0';

  if (tmp_hex_oid_len == hexsz && !get_oid_hex(hex_oid, &oid)) {

   if (fanout == 0xff) {

    num_notes++;
    continue;
   }
   construct_path_with_fanout(hex_oid, fanout, realpath);
   if (!strcmp(fullpath, realpath)) {

    num_notes++;
    continue;
   }


   if (!tree_content_remove(orig_root, fullpath, &leaf, 0))
    die("Failed to remove path %s", fullpath);
   tree_content_set(orig_root, realpath,
    &leaf.versions[1].oid,
    leaf.versions[1].mode,
    leaf.tree);
  } else if (S_ISDIR(e->versions[1].mode)) {

   num_notes += do_change_note_fanout(orig_root, e,
    hex_oid, tmp_hex_oid_len,
    fullpath, tmp_fullpath_len, fanout);
  }


  t = root->tree;
 }
 return num_notes;
}
