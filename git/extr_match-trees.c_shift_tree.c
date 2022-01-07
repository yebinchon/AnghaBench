
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int die (char*,char*,int ) ;
 scalar_t__ get_tree_entry (struct repository*,struct object_id const*,char*,struct object_id*,unsigned short*) ;
 int match_trees (struct object_id const*,struct object_id const*,int*,char**,char*,int) ;
 int oid_to_hex (struct object_id const*) ;
 int oidcpy (struct object_id*,struct object_id const*) ;
 int score_trees (struct object_id const*,struct object_id const*) ;
 int splice_tree (struct object_id const*,char*,struct object_id const*,struct object_id*) ;
 char* xcalloc (int,int) ;

void shift_tree(struct repository *r,
  const struct object_id *hash1,
  const struct object_id *hash2,
  struct object_id *shifted,
  int depth_limit)
{
 char *add_prefix;
 char *del_prefix;
 int add_score, del_score;





 if (!depth_limit)
  depth_limit = 2;

 add_score = del_score = score_trees(hash1, hash2);
 add_prefix = xcalloc(1, 1);
 del_prefix = xcalloc(1, 1);





 match_trees(hash1, hash2, &add_score, &add_prefix, "", depth_limit);





 match_trees(hash2, hash1, &del_score, &del_prefix, "", depth_limit);


 oidcpy(shifted, hash2);

 if (add_score < del_score) {

  unsigned short mode;

  if (!*del_prefix)
   return;

  if (get_tree_entry(r, hash2, del_prefix, shifted, &mode))
   die("cannot find path %s in tree %s",
       del_prefix, oid_to_hex(hash2));
  return;
 }

 if (!*add_prefix)
  return;

 splice_tree(hash1, add_prefix, hash2, shifted);
}
