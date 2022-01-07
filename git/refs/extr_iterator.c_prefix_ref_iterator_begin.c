
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int ordered; } ;
struct prefix_ref_iterator {int trim; int prefix; struct ref_iterator* iter0; struct ref_iterator base; } ;


 int base_ref_iterator_init (struct ref_iterator*,int *,int ) ;
 int prefix_ref_iterator_vtable ;
 struct prefix_ref_iterator* xcalloc (int,int) ;
 int xstrdup (char const*) ;

struct ref_iterator *prefix_ref_iterator_begin(struct ref_iterator *iter0,
            const char *prefix,
            int trim)
{
 struct prefix_ref_iterator *iter;
 struct ref_iterator *ref_iterator;

 if (!*prefix && !trim)
  return iter0;

 iter = xcalloc(1, sizeof(*iter));
 ref_iterator = &iter->base;

 base_ref_iterator_init(ref_iterator, &prefix_ref_iterator_vtable, iter0->ordered);

 iter->iter0 = iter0;
 iter->prefix = xstrdup(prefix);
 iter->trim = trim;

 return ref_iterator;
}
