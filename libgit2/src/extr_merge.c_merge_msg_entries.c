
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_msg_entry {int dummy; } ;
typedef int git_vector ;


 int git_vector_clear (int *) ;
 int git_vector_insert (int *,struct merge_msg_entry*) ;

__attribute__((used)) static int merge_msg_entries(
 git_vector *v,
 const struct merge_msg_entry *entries,
 size_t len,
 int (*match)(const struct merge_msg_entry *entry, git_vector *entries))
{
 size_t i;
 int matches, total = 0;

 git_vector_clear(v);

 for (i = 0; i < len; i++) {
  if ((matches = match(&entries[i], v)) < 0)
   return matches;
  else if (!matches)
   continue;

  git_vector_insert(v, (struct merge_msg_entry *)&entries[i]);
  total++;
 }

 return total;
}
