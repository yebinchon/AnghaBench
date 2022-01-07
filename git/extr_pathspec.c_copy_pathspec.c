
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {int attr_match_nr; char* value; int attr_check; struct pathspec_item* attr_match; void* original; void* match; } ;
struct pathspec {int nr; struct pathspec_item* items; } ;


 int ALLOC_ARRAY (struct pathspec_item*,int) ;
 int COPY_ARRAY (struct pathspec_item*,struct pathspec_item*,int) ;
 int attr_check_dup (int ) ;
 void* xstrdup (void*) ;
 char* xstrdup_or_null (char const*) ;

void copy_pathspec(struct pathspec *dst, const struct pathspec *src)
{
 int i, j;

 *dst = *src;
 ALLOC_ARRAY(dst->items, dst->nr);
 COPY_ARRAY(dst->items, src->items, dst->nr);

 for (i = 0; i < dst->nr; i++) {
  struct pathspec_item *d = &dst->items[i];
  struct pathspec_item *s = &src->items[i];

  d->match = xstrdup(s->match);
  d->original = xstrdup(s->original);

  ALLOC_ARRAY(d->attr_match, d->attr_match_nr);
  COPY_ARRAY(d->attr_match, s->attr_match, d->attr_match_nr);
  for (j = 0; j < d->attr_match_nr; j++) {
   const char *value = s->attr_match[j].value;
   d->attr_match[j].value = xstrdup_or_null(value);
  }

  d->attr_check = attr_check_dup(s->attr_check);
 }
}
