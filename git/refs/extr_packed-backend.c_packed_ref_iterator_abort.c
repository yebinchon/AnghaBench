
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct packed_ref_iterator {int snapshot; int refname_buf; } ;


 int ITER_DONE ;
 int base_ref_iterator_free (struct ref_iterator*) ;
 int release_snapshot (int ) ;
 int strbuf_release (int *) ;

__attribute__((used)) static int packed_ref_iterator_abort(struct ref_iterator *ref_iterator)
{
 struct packed_ref_iterator *iter =
  (struct packed_ref_iterator *)ref_iterator;
 int ok = ITER_DONE;

 strbuf_release(&iter->refname_buf);
 release_snapshot(iter->snapshot);
 base_ref_iterator_free(ref_iterator);
 return ok;
}
