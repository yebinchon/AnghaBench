
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct cached_object {unsigned long size; int type; int oid; int buf; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int ALLOC_GROW (struct cached_object*,scalar_t__,int ) ;
 int cached_object_alloc ;
 scalar_t__ cached_object_nr ;
 struct cached_object* cached_objects ;
 scalar_t__ find_cached_object (struct object_id*) ;
 scalar_t__ has_object_file (struct object_id*) ;
 int hash_object_file (void*,unsigned long,int ,struct object_id*) ;
 int memcpy (int ,void*,unsigned long) ;
 int oidcpy (int *,struct object_id*) ;
 int type_name (int) ;
 int xmalloc (unsigned long) ;

int pretend_object_file(void *buf, unsigned long len, enum object_type type,
   struct object_id *oid)
{
 struct cached_object *co;

 hash_object_file(buf, len, type_name(type), oid);
 if (has_object_file(oid) || find_cached_object(oid))
  return 0;
 ALLOC_GROW(cached_objects, cached_object_nr + 1, cached_object_alloc);
 co = &cached_objects[cached_object_nr++];
 co->size = len;
 co->type = type;
 co->buf = xmalloc(len);
 memcpy(co->buf, buf, len);
 oidcpy(&co->oid, oid);
 return 0;
}
