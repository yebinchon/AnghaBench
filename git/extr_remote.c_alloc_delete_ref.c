
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int new_oid; } ;


 struct ref* alloc_ref (char*) ;
 int oidclr (int *) ;

__attribute__((used)) static struct ref *alloc_delete_ref(void)
{
 struct ref *ref = alloc_ref("(delete)");
 oidclr(&ref->new_oid);
 return ref;
}
