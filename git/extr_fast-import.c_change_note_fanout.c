
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct tree_entry {int dummy; } ;


 int GIT_MAX_HEXSZ ;
 int do_change_note_fanout (struct tree_entry*,struct tree_entry*,char*,int ,char*,int ,unsigned char) ;

__attribute__((used)) static uintmax_t change_note_fanout(struct tree_entry *root,
  unsigned char fanout)
{






 char hex_oid[GIT_MAX_HEXSZ], path[GIT_MAX_HEXSZ + (GIT_MAX_HEXSZ / 2) - 1 + 1];
 return do_change_note_fanout(root, root, hex_oid, 0, path, 0, fanout);
}
