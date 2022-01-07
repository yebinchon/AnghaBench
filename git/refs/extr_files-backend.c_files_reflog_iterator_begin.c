
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct ref_iterator {int dummy; } ;
struct files_ref_store {int gitcommondir; int gitdir; } ;


 int REF_STORE_READ ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 struct ref_iterator* merge_ref_iterator_begin (int ,struct ref_iterator*,struct ref_iterator*,int ,struct files_ref_store*) ;
 struct ref_iterator* reflog_iterator_begin (struct ref_store*,int ) ;
 int reflog_iterator_select ;
 int strcmp (int ,int ) ;

__attribute__((used)) static struct ref_iterator *files_reflog_iterator_begin(struct ref_store *ref_store)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_READ,
          "reflog_iterator_begin");

 if (!strcmp(refs->gitdir, refs->gitcommondir)) {
  return reflog_iterator_begin(ref_store, refs->gitcommondir);
 } else {
  return merge_ref_iterator_begin(
   0,
   reflog_iterator_begin(ref_store, refs->gitdir),
   reflog_iterator_begin(ref_store, refs->gitcommondir),
   reflog_iterator_select, refs);
 }
}
