
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;
struct fetch_negotiator {int dummy; } ;


 int mark_complete (int *) ;

__attribute__((used)) static void mark_alternate_complete(struct fetch_negotiator *unused,
        struct object *obj)
{
 mark_complete(&obj->oid);
}
