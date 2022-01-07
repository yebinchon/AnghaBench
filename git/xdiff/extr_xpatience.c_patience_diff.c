
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xpparam_t ;
struct TYPE_7__ {int* rchg; } ;
struct TYPE_6__ {int* rchg; } ;
struct TYPE_8__ {TYPE_2__ xdf2; TYPE_1__ xdf1; } ;
typedef TYPE_3__ xdfenv_t ;
struct hashmap {int entries; int has_matches; } ;
struct entry {int dummy; } ;
typedef int mmfile_t ;
typedef int map ;


 int fall_back_to_classic_diff (struct hashmap*,int,int,int,int) ;
 scalar_t__ fill_hashmap (int *,int *,int const*,TYPE_3__*,struct hashmap*,int,int,int,int) ;
 struct entry* find_longest_common_sequence (struct hashmap*) ;
 int memset (struct hashmap*,int ,int) ;
 int walk_common_sequence (struct hashmap*,struct entry*,int,int,int,int) ;
 int xdl_free (int ) ;

__attribute__((used)) static int patience_diff(mmfile_t *file1, mmfile_t *file2,
  xpparam_t const *xpp, xdfenv_t *env,
  int line1, int count1, int line2, int count2)
{
 struct hashmap map;
 struct entry *first;
 int result = 0;


 if (!count1) {
  while(count2--)
   env->xdf2.rchg[line2++ - 1] = 1;
  return 0;
 } else if (!count2) {
  while(count1--)
   env->xdf1.rchg[line1++ - 1] = 1;
  return 0;
 }

 memset(&map, 0, sizeof(map));
 if (fill_hashmap(file1, file2, xpp, env, &map,
   line1, count1, line2, count2))
  return -1;


 if (!map.has_matches) {
  while(count1--)
   env->xdf1.rchg[line1++ - 1] = 1;
  while(count2--)
   env->xdf2.rchg[line2++ - 1] = 1;
  xdl_free(map.entries);
  return 0;
 }

 first = find_longest_common_sequence(&map);
 if (first)
  result = walk_common_sequence(&map, first,
   line1, count1, line2, count2);
 else
  result = fall_back_to_classic_diff(&map,
   line1, count1, line2, count2);

 xdl_free(map.entries);
 return result;
}
