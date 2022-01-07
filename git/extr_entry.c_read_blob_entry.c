
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int oid; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int free (void*) ;
 void* read_object_file (int *,int*,unsigned long*) ;

__attribute__((used)) static void *read_blob_entry(const struct cache_entry *ce, unsigned long *size)
{
 enum object_type type;
 void *blob_data = read_object_file(&ce->oid, &type, size);

 if (blob_data) {
  if (type == OBJ_BLOB)
   return blob_data;
  free(blob_data);
 }
 return ((void*)0);
}
