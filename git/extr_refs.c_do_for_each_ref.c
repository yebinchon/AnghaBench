
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct ref_iterator {int dummy; } ;
struct do_for_each_ref_help {void* member_1; int member_0; } ;
typedef int each_ref_fn ;


 int do_for_each_ref_helper ;
 int do_for_each_repo_ref_iterator (int ,struct ref_iterator*,int ,struct do_for_each_ref_help*) ;
 struct ref_iterator* refs_ref_iterator_begin (struct ref_store*,char const*,int,int) ;
 int the_repository ;

__attribute__((used)) static int do_for_each_ref(struct ref_store *refs, const char *prefix,
      each_ref_fn fn, int trim, int flags, void *cb_data)
{
 struct ref_iterator *iter;
 struct do_for_each_ref_help hp = { fn, cb_data };

 if (!refs)
  return 0;

 iter = refs_ref_iterator_begin(refs, prefix, trim, flags);

 return do_for_each_repo_ref_iterator(the_repository, iter,
     do_for_each_ref_helper, &hp);
}
