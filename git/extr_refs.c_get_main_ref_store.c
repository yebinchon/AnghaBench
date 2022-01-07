
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {struct ref_store* refs; int gitdir; } ;
struct ref_store {int dummy; } ;


 int BUG (char*) ;
 int REF_STORE_ALL_CAPS ;
 struct ref_store* ref_store_init (int ,int ) ;

struct ref_store *get_main_ref_store(struct repository *r)
{
 if (r->refs)
  return r->refs;

 if (!r->gitdir)
  BUG("attempting to get main_ref_store outside of repository");

 r->refs = ref_store_init(r->gitdir, REF_STORE_ALL_CAPS);
 return r->refs;
}
