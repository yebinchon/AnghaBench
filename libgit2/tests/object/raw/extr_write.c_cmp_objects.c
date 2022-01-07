
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ len; int data; } ;
typedef TYPE_1__ git_rawobj ;


 int cl_assert (int) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static void cmp_objects(git_rawobj *o1, git_rawobj *o2)
{
   cl_assert(o1->type == o2->type);
   cl_assert(o1->len == o2->len);
   if (o1->len > 0)
      cl_assert(memcmp(o1->data, o2->data, o1->len) == 0);
}
