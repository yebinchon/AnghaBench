
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc_x {struct tree_desc_skip* skip; } ;
struct tree_desc_skip {struct tree_desc_skip* prev; } ;


 int free (struct tree_desc_skip*) ;

__attribute__((used)) static void free_extended_entry(struct tree_desc_x *t)
{
 struct tree_desc_skip *p, *s;

 for (s = t->skip; s; s = p) {
  p = s->prev;
  free(s);
 }
}
