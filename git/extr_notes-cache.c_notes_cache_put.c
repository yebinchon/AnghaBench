
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct notes_cache {int tree; } ;


 int add_note (int *,struct object_id*,struct object_id*,int *) ;
 scalar_t__ write_object_file (char const*,size_t,char*,struct object_id*) ;

int notes_cache_put(struct notes_cache *c, struct object_id *key_oid,
      const char *data, size_t size)
{
 struct object_id value_oid;

 if (write_object_file(data, size, "blob", &value_oid) < 0)
  return -1;
 return add_note(&c->tree, key_oid, &value_oid, ((void*)0));
}
