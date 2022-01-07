
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct notes_merge_pair {int obj; } ;


 int MOVE_ARRAY (struct notes_merge_pair*,struct notes_merge_pair*,int) ;
 int memset (struct notes_merge_pair*,int ,int) ;
 int oidcmp (struct object_id*,int *) ;

__attribute__((used)) static struct notes_merge_pair *find_notes_merge_pair_pos(
  struct notes_merge_pair *list, int len, struct object_id *obj,
  int insert_new, int *occupied)
{
 static int last_index;
 int i = last_index < len ? last_index : len - 1;
 int prev_cmp = 0, cmp = -1;
 while (i >= 0 && i < len) {
  cmp = oidcmp(obj, &list[i].obj);
  if (!cmp)
   break;
  else if (cmp < 0 && prev_cmp <= 0)
   i--;
  else if (cmp < 0)
   break;
  else if (cmp > 0 && prev_cmp >= 0)
   i++;
  else {
   i++;
   break;
  }
  prev_cmp = cmp;
 }
 if (i < 0)
  i = 0;


 if (!cmp)
  *occupied = 1;
 else {
  *occupied = 0;
  if (insert_new && i < len) {
   MOVE_ARRAY(list + i + 1, list + i, len - i);
   memset(list + i, 0, sizeof(struct notes_merge_pair));
  }
 }
 last_index = i;
 return list + i;
}
