
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dst; } ;
struct TYPE_4__ {TYPE_1__ refspec; } ;
typedef TYPE_2__ push_spec ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int push_spec_rref_cmp(const void *a, const void *b)
{
 const push_spec *push_spec_a = a, *push_spec_b = b;

 return strcmp(push_spec_a->refspec.dst, push_spec_b->refspec.dst);
}
