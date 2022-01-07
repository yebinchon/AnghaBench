
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct patch_util {int i; int matching; scalar_t__ diff; int e; scalar_t__ diff_offset; scalar_t__ patch; } ;
struct hashmap {int dummy; } ;
typedef int hashmap_cmp_fn ;
struct TYPE_2__ {scalar_t__ string; struct patch_util* util; } ;


 int BUG (char*) ;
 int e ;
 int hashmap_add (struct hashmap*,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int hashmap_free (struct hashmap*) ;
 int hashmap_init (struct hashmap*,int ,int *,int ) ;
 struct patch_util* hashmap_remove_entry (struct hashmap*,struct patch_util*,int ,int *) ;
 scalar_t__ patch_util_cmp ;
 int strhash (scalar_t__) ;

__attribute__((used)) static void find_exact_matches(struct string_list *a, struct string_list *b)
{
 struct hashmap map;
 int i;

 hashmap_init(&map, (hashmap_cmp_fn)patch_util_cmp, ((void*)0), 0);


 for (i = 0; i < a->nr; i++) {
  struct patch_util *util = a->items[i].util;

  util->i = i;
  util->patch = a->items[i].string;
  util->diff = util->patch + util->diff_offset;
  hashmap_entry_init(&util->e, strhash(util->diff));
  hashmap_add(&map, &util->e);
 }


 for (i = 0; i < b->nr; i++) {
  struct patch_util *util = b->items[i].util, *other;

  util->i = i;
  util->patch = b->items[i].string;
  util->diff = util->patch + util->diff_offset;
  hashmap_entry_init(&util->e, strhash(util->diff));
  other = hashmap_remove_entry(&map, util, e, ((void*)0));
  if (other) {
   if (other->matching >= 0)
    BUG("already assigned!");

   other->matching = i;
   util->matching = other->i;
  }
 }

 hashmap_free(&map);
}
