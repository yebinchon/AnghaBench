
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
struct ref_iterator {int dummy; } ;
struct do_for_each_ref_help {void* member_1; int member_0; } ;
typedef int each_ref_fn ;
struct TYPE_2__ {struct ref_iterator* (* reflog_iterator_begin ) (struct ref_store*) ;} ;


 int do_for_each_ref_helper ;
 int do_for_each_repo_ref_iterator (int ,struct ref_iterator*,int ,struct do_for_each_ref_help*) ;
 struct ref_iterator* stub1 (struct ref_store*) ;
 int the_repository ;

int refs_for_each_reflog(struct ref_store *refs, each_ref_fn fn, void *cb_data)
{
 struct ref_iterator *iter;
 struct do_for_each_ref_help hp = { fn, cb_data };

 iter = refs->be->reflog_iterator_begin(refs);

 return do_for_each_repo_ref_iterator(the_repository, iter,
          do_for_each_ref_helper, &hp);
}
