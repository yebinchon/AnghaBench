
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct packed_ref_store {unsigned int store_flags; int path; } ;


 int base_ref_store_init (struct ref_store*,int *) ;
 int chdir_notify_reparent (char*,int *) ;
 int refs_be_packed ;
 struct packed_ref_store* xcalloc (int,int) ;
 int xstrdup (char const*) ;

struct ref_store *packed_ref_store_create(const char *path,
       unsigned int store_flags)
{
 struct packed_ref_store *refs = xcalloc(1, sizeof(*refs));
 struct ref_store *ref_store = (struct ref_store *)refs;

 base_ref_store_init(ref_store, &refs_be_packed);
 refs->store_flags = store_flags;

 refs->path = xstrdup(path);
 chdir_notify_reparent("packed-refs", &refs->path);

 return ref_store;
}
