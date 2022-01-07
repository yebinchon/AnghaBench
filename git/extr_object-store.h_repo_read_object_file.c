
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 void* read_object_file_extended (struct repository*,struct object_id const*,int*,unsigned long*,int) ;

__attribute__((used)) static inline void *repo_read_object_file(struct repository *r,
       const struct object_id *oid,
       enum object_type *type,
       unsigned long *size)
{
 return read_object_file_extended(r, oid, type, size, 1);
}
