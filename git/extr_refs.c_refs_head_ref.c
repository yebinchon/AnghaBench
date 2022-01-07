
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;
typedef int (* each_ref_fn ) (char*,struct object_id*,int,void*) ;


 int RESOLVE_REF_READING ;
 int refs_read_ref_full (struct ref_store*,char*,int ,struct object_id*,int*) ;

int refs_head_ref(struct ref_store *refs, each_ref_fn fn, void *cb_data)
{
 struct object_id oid;
 int flag;

 if (!refs_read_ref_full(refs, "HEAD", RESOLVE_REF_READING,
    &oid, &flag))
  return fn("HEAD", &oid, flag, cb_data);

 return 0;
}
