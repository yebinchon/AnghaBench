
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int nr; struct entry* first; } ;
struct entry {scalar_t__ line2; struct entry* previous; struct entry* next; scalar_t__ anchor; } ;


 scalar_t__ NON_UNIQUE ;
 int binary_search (struct entry**,int,struct entry*) ;
 int xdl_free (struct entry**) ;
 struct entry** xdl_malloc (int) ;

__attribute__((used)) static struct entry *find_longest_common_sequence(struct hashmap *map)
{
 struct entry **sequence = xdl_malloc(map->nr * sizeof(struct entry *));
 int longest = 0, i;
 struct entry *entry;






 int anchor_i = -1;

 if (!sequence)
  return ((void*)0);

 for (entry = map->first; entry; entry = entry->next) {
  if (!entry->line2 || entry->line2 == NON_UNIQUE)
   continue;
  i = binary_search(sequence, longest, entry);
  entry->previous = i < 0 ? ((void*)0) : sequence[i];
  ++i;
  if (i <= anchor_i)
   continue;
  sequence[i] = entry;
  if (entry->anchor) {
   anchor_i = i;
   longest = anchor_i + 1;
  } else if (i == longest) {
   longest++;
  }
 }


 if (!longest) {
  xdl_free(sequence);
  return ((void*)0);
 }


 entry = sequence[longest - 1];
 entry->next = ((void*)0);
 while (entry->previous) {
  entry->previous->next = entry;
  entry = entry->previous;
 }
 xdl_free(sequence);
 return entry;
}
