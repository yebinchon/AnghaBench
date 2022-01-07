
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;
struct fetch_negotiator {int dummy; } ;


 int rev_list_insert_ref (struct fetch_negotiator*,int *,int *) ;

__attribute__((used)) static void insert_one_alternate_object(struct fetch_negotiator *negotiator,
     struct object *obj)
{
 rev_list_insert_ref(negotiator, ((void*)0), &obj->oid);
}
