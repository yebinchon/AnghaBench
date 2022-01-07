
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct ref_storage_be {struct ref_store* (* init ) (char const*,unsigned int) ;} ;


 int BUG (char*,char const*) ;
 struct ref_storage_be* find_ref_storage_backend (char const*) ;
 struct ref_store* stub1 (char const*,unsigned int) ;

__attribute__((used)) static struct ref_store *ref_store_init(const char *gitdir,
     unsigned int flags)
{
 const char *be_name = "files";
 struct ref_storage_be *be = find_ref_storage_backend(be_name);
 struct ref_store *refs;

 if (!be)
  BUG("reference backend %s is unknown", be_name);

 refs = be->init(gitdir, flags);
 return refs;
}
