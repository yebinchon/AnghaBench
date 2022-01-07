
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; scalar_t__ parsed; } ;
struct tag {TYPE_1__ object; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_TAG ;
 int error (char*,int ) ;
 int free (void*) ;
 int oid_to_hex (int *) ;
 int parse_tag_buffer (int ,struct tag*,void*,unsigned long) ;
 void* read_object_file (int *,int*,unsigned long*) ;
 int the_repository ;

int parse_tag(struct tag *item)
{
 enum object_type type;
 void *data;
 unsigned long size;
 int ret;

 if (item->object.parsed)
  return 0;
 data = read_object_file(&item->object.oid, &type, &size);
 if (!data)
  return error("Could not read %s",
        oid_to_hex(&item->object.oid));
 if (type != OBJ_TAG) {
  free(data);
  return error("Object %s not a tag",
        oid_to_hex(&item->object.oid));
 }
 ret = parse_tag_buffer(the_repository, item, data, size);
 free(data);
 return ret;
}
