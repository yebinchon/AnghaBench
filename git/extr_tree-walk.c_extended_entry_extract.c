
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {scalar_t__ size; } ;
struct tree_desc_x {struct tree_desc d; struct tree_desc_skip* skip; } ;
struct tree_desc_skip {char* ptr; struct tree_desc_skip* prev; } ;
struct name_entry {char* path; } ;


 int check_entry_match (char const*,int,char const*,int) ;
 int entry_clear (struct name_entry*) ;
 int entry_extract (struct tree_desc*,struct name_entry*) ;
 int tree_entry_len (struct name_entry*) ;
 int update_tree_entry (struct tree_desc*) ;

__attribute__((used)) static void extended_entry_extract(struct tree_desc_x *t,
       struct name_entry *a,
       const char *first,
       int first_len)
{
 const char *path;
 int len;
 struct tree_desc probe;
 struct tree_desc_skip *skip;





 while (1) {
  if (!t->d.size) {
   entry_clear(a);
   break;
  }
  entry_extract(&t->d, a);
  for (skip = t->skip; skip; skip = skip->prev)
   if (a->path == skip->ptr)
    break;
  if (!skip)
   break;

  update_tree_entry(&t->d);
 }

 if (!first || !a->path)
  return;




 path = a->path;
 len = tree_entry_len(a);
 switch (check_entry_match(first, first_len, path, len)) {
 case -1:
  entry_clear(a);
 case 0:
  return;
 default:
  break;
 }





 probe = t->d;
 while (probe.size) {
  entry_extract(&probe, a);
  path = a->path;
  len = tree_entry_len(a);
  switch (check_entry_match(first, first_len, path, len)) {
  case -1:
   entry_clear(a);
  case 0:
   return;
  default:
   update_tree_entry(&probe);
   break;
  }

 }
 entry_clear(a);
}
