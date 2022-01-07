
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_info {int* typep; unsigned long* sizep; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct object_info OBJECT_INFO_INIT ;
 int OBJECT_INFO_LOOKUP_REPLACE ;
 scalar_t__ oid_object_info_extended (struct repository*,struct object_id const*,struct object_info*,int ) ;

int oid_object_info(struct repository *r,
      const struct object_id *oid,
      unsigned long *sizep)
{
 enum object_type type;
 struct object_info oi = OBJECT_INFO_INIT;

 oi.typep = &type;
 oi.sizep = sizep;
 if (oid_object_info_extended(r, oid, &oi,
          OBJECT_INFO_LOOKUP_REPLACE) < 0)
  return -1;
 return type;
}
