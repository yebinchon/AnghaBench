
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct decoration {int nr; int size; } ;


 int grow_decoration (struct decoration*) ;
 void* insert_decoration (struct decoration*,struct object const*,void*) ;

void *add_decoration(struct decoration *n, const struct object *obj,
  void *decoration)
{
 int nr = n->nr + 1;

 if (nr > n->size * 2 / 3)
  grow_decoration(n);
 return insert_decoration(n, obj, decoration);
}
