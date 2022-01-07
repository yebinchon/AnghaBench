
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
struct ref_iterator {int ordered; } ;
struct TYPE_2__ {struct ref_iterator* (* iterator_begin ) (struct ref_store*,char const*,int) ;} ;


 int BUG (char*) ;
 int DO_FOR_EACH_INCLUDE_BROKEN ;
 scalar_t__ git_env_bool (char*,int ) ;
 struct ref_iterator* prefix_ref_iterator_begin (struct ref_iterator*,char*,int) ;
 scalar_t__ ref_paranoia ;
 struct ref_iterator* stub1 (struct ref_store*,char const*,int) ;

struct ref_iterator *refs_ref_iterator_begin(
  struct ref_store *refs,
  const char *prefix, int trim, int flags)
{
 struct ref_iterator *iter;

 if (ref_paranoia < 0)
  ref_paranoia = git_env_bool("GIT_REF_PARANOIA", 0);
 if (ref_paranoia)
  flags |= DO_FOR_EACH_INCLUDE_BROKEN;

 iter = refs->be->iterator_begin(refs, prefix, flags);





 if (trim)
  iter = prefix_ref_iterator_begin(iter, "", trim);


 if (!iter->ordered)
  BUG("reference iterator is not ordered");

 return iter;
}
