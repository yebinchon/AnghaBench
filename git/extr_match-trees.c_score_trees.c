
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int oid; } ;
struct tree_desc {TYPE_1__ entry; scalar_t__ size; } ;
struct object_id {int dummy; } ;


 int base_name_entries_compare (TYPE_1__*,TYPE_1__*) ;
 void* fill_tree_desc_strict (struct tree_desc*,struct object_id const*) ;
 int free (void*) ;
 int oideq (int *,int *) ;
 scalar_t__ score_differs (int ,int ) ;
 scalar_t__ score_matches (int ,int ) ;
 scalar_t__ score_missing (int ) ;
 int update_tree_entry (struct tree_desc*) ;

__attribute__((used)) static int score_trees(const struct object_id *hash1, const struct object_id *hash2)
{
 struct tree_desc one;
 struct tree_desc two;
 void *one_buf = fill_tree_desc_strict(&one, hash1);
 void *two_buf = fill_tree_desc_strict(&two, hash2);
 int score = 0;

 for (;;) {
  int cmp;

  if (one.size && two.size)
   cmp = base_name_entries_compare(&one.entry, &two.entry);
  else if (one.size)

   cmp = -1;
  else if (two.size)

   cmp = 1;
  else
   break;

  if (cmp < 0) {

   score += score_missing(one.entry.mode);
   update_tree_entry(&one);
  } else if (cmp > 0) {

   score += score_missing(two.entry.mode);
   update_tree_entry(&two);
  } else {

   if (!oideq(&one.entry.oid, &two.entry.oid)) {

    score += score_differs(one.entry.mode,
             two.entry.mode);
   } else {

    score += score_matches(one.entry.mode,
             two.entry.mode);
   }
   update_tree_entry(&one);
   update_tree_entry(&two);
  }
 }
 free(one_buf);
 free(two_buf);
 return score;
}
