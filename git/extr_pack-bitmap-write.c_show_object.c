
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;
struct bitmap {int dummy; } ;


 int bitmap_set (struct bitmap*,int ) ;
 int find_object_pos (int *) ;
 int mark_as_seen (struct object*) ;

__attribute__((used)) static void show_object(struct object *object, const char *name, void *data)
{
 struct bitmap *base = data;
 bitmap_set(base, find_object_pos(&object->oid));
 mark_as_seen(object);
}
