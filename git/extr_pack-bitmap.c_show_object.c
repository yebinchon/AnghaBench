
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;
struct bitmap_show_data {int base; int bitmap_git; } ;


 int bitmap_position (int ,int *) ;
 int bitmap_set (int ,int) ;
 int ext_index_add_object (int ,struct object*,char const*) ;

__attribute__((used)) static void show_object(struct object *object, const char *name, void *data_)
{
 struct bitmap_show_data *data = data_;
 int bitmap_pos;

 bitmap_pos = bitmap_position(data->bitmap_git, &object->oid);

 if (bitmap_pos < 0)
  bitmap_pos = ext_index_add_object(data->bitmap_git, object,
        name);

 bitmap_set(data->base, bitmap_pos);
}
