
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref; } ;
typedef TYPE_1__ push_status ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int push_status_ref_cmp(const void *a, const void *b)
{
 const push_status *push_status_a = a, *push_status_b = b;

 return strcmp(push_status_a->ref, push_status_b->ref);
}
