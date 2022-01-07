
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_list {int dummy; } ;
struct object {int flags; } ;
struct blob {struct object object; } ;


 int LOCAL ;
 int SEEN ;
 int UNINTERESTING ;
 struct object_list** add_one_object (struct object*,struct object_list**) ;

__attribute__((used)) static struct object_list **process_blob(struct blob *blob,
      struct object_list **p)
{
 struct object *obj = &blob->object;

 obj->flags |= LOCAL;

 if (obj->flags & (UNINTERESTING | SEEN))
  return p;

 obj->flags |= SEEN;
 return add_one_object(obj, p);
}
