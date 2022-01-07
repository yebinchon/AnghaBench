
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_transaction {int dummy; } ;
struct ref_to_prune {struct ref_to_prune* next; int oid; } ;
struct ref_store {int dummy; } ;
struct ref_iterator {int oid; int refname; int flags; } ;
struct files_ref_store {int packed_ref_store; } ;


 int FLEX_ALLOC_STR (struct ref_to_prune*,int ,int ) ;
 int ITER_DONE ;
 int ITER_OK ;
 int LOCK_DIE_ON_ERROR ;
 unsigned int PACK_REFS_PRUNE ;
 int REF_NO_DEREF ;
 int REF_STORE_ODB ;
 int REF_STORE_WRITE ;
 struct strbuf STRBUF_INIT ;
 struct ref_iterator* cache_ref_iterator_begin (int ,int *,int ) ;
 int die (char*,...) ;
 struct files_ref_store* files_downcast (struct ref_store*,int,char*) ;
 int get_loose_ref_cache (struct files_ref_store*) ;
 int name ;
 int oidcpy (int *,int ) ;
 int packed_refs_lock (int ,int ,struct strbuf*) ;
 int packed_refs_unlock (int ) ;
 int prune_refs (struct files_ref_store*,struct ref_to_prune**) ;
 int ref_iterator_advance (struct ref_iterator*) ;
 struct ref_transaction* ref_store_transaction_begin (int ,struct strbuf*) ;
 scalar_t__ ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 scalar_t__ ref_transaction_update (struct ref_transaction*,int ,int ,int *,int ,int *,struct strbuf*) ;
 int should_pack_ref (int ,int ,int ,unsigned int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int files_pack_refs(struct ref_store *ref_store, unsigned int flags)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_WRITE | REF_STORE_ODB,
          "pack_refs");
 struct ref_iterator *iter;
 int ok;
 struct ref_to_prune *refs_to_prune = ((void*)0);
 struct strbuf err = STRBUF_INIT;
 struct ref_transaction *transaction;

 transaction = ref_store_transaction_begin(refs->packed_ref_store, &err);
 if (!transaction)
  return -1;

 packed_refs_lock(refs->packed_ref_store, LOCK_DIE_ON_ERROR, &err);

 iter = cache_ref_iterator_begin(get_loose_ref_cache(refs), ((void*)0), 0);
 while ((ok = ref_iterator_advance(iter)) == ITER_OK) {





  if (!should_pack_ref(iter->refname, iter->oid, iter->flags,
         flags))
   continue;





  if (ref_transaction_update(transaction, iter->refname,
        iter->oid, ((void*)0),
        REF_NO_DEREF, ((void*)0), &err))
   die("failure preparing to create packed reference %s: %s",
       iter->refname, err.buf);


  if ((flags & PACK_REFS_PRUNE)) {
   struct ref_to_prune *n;
   FLEX_ALLOC_STR(n, name, iter->refname);
   oidcpy(&n->oid, iter->oid);
   n->next = refs_to_prune;
   refs_to_prune = n;
  }
 }
 if (ok != ITER_DONE)
  die("error while iterating over references");

 if (ref_transaction_commit(transaction, &err))
  die("unable to write new packed-refs: %s", err.buf);

 ref_transaction_free(transaction);

 packed_refs_unlock(refs->packed_ref_store);

 prune_refs(refs, &refs_to_prune);
 strbuf_release(&err);
 return 0;
}
