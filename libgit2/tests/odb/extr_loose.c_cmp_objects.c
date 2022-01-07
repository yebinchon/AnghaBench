
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dlen; int data; int type; } ;
typedef TYPE_1__ object_data ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ len; int data; } ;
typedef TYPE_2__ git_rawobj ;


 int cl_assert (int) ;
 scalar_t__ git_object_string2type (int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static void cmp_objects(git_rawobj *o, object_data *d)
{
 cl_assert(o->type == git_object_string2type(d->type));
 cl_assert(o->len == d->dlen);

 if (o->len > 0)
  cl_assert(memcmp(o->data, d->data, o->len) == 0);
}
