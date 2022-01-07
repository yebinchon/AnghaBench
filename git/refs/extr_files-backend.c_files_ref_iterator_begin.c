
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct ref_iterator {int ordered; } ;
struct files_ref_store {int packed_ref_store; } ;
struct files_ref_iterator {unsigned int flags; struct ref_iterator* iter0; struct ref_iterator base; } ;


 unsigned int DO_FOR_EACH_INCLUDE_BROKEN ;
 unsigned int REF_STORE_ODB ;
 unsigned int REF_STORE_READ ;
 int base_ref_iterator_init (struct ref_iterator*,int *,int ) ;
 struct ref_iterator* cache_ref_iterator_begin (int ,char const*,int) ;
 struct files_ref_store* files_downcast (struct ref_store*,unsigned int,char*) ;
 int files_ref_iterator_vtable ;
 int get_loose_ref_cache (struct files_ref_store*) ;
 struct ref_iterator* overlay_ref_iterator_begin (struct ref_iterator*,struct ref_iterator*) ;
 struct ref_iterator* refs_ref_iterator_begin (int ,char const*,int ,unsigned int) ;
 struct files_ref_iterator* xcalloc (int,int) ;

__attribute__((used)) static struct ref_iterator *files_ref_iterator_begin(
  struct ref_store *ref_store,
  const char *prefix, unsigned int flags)
{
 struct files_ref_store *refs;
 struct ref_iterator *loose_iter, *packed_iter, *overlay_iter;
 struct files_ref_iterator *iter;
 struct ref_iterator *ref_iterator;
 unsigned int required_flags = REF_STORE_READ;

 if (!(flags & DO_FOR_EACH_INCLUDE_BROKEN))
  required_flags |= REF_STORE_ODB;

 refs = files_downcast(ref_store, required_flags, "ref_iterator_begin");
 loose_iter = cache_ref_iterator_begin(get_loose_ref_cache(refs),
           prefix, 1);
 packed_iter = refs_ref_iterator_begin(
   refs->packed_ref_store, prefix, 0,
   DO_FOR_EACH_INCLUDE_BROKEN);

 overlay_iter = overlay_ref_iterator_begin(loose_iter, packed_iter);

 iter = xcalloc(1, sizeof(*iter));
 ref_iterator = &iter->base;
 base_ref_iterator_init(ref_iterator, &files_ref_iterator_vtable,
          overlay_iter->ordered);
 iter->iter0 = overlay_iter;
 iter->flags = flags;

 return ref_iterator;
}
