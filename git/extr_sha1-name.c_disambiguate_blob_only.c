
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int OBJ_BLOB ;
 int oid_object_info (struct repository*,struct object_id const*,int *) ;

__attribute__((used)) static int disambiguate_blob_only(struct repository *r,
      const struct object_id *oid,
      void *cb_data_unused)
{
 int kind = oid_object_info(r, oid, ((void*)0));
 return kind == OBJ_BLOB;
}
