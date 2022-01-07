
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_object_store {int packed_git_mru; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct raw_object_store*,int ,int) ;
 struct raw_object_store* xmalloc (int) ;

struct raw_object_store *raw_object_store_new(void)
{
 struct raw_object_store *o = xmalloc(sizeof(*o));

 memset(o, 0, sizeof(*o));
 INIT_LIST_HEAD(&o->packed_git_mru);
 return o;
}
