
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ head; } ;
typedef TYPE_2__ git_pkt_ref ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int ref_name_cmp(const void *a, const void *b)
{
 const git_pkt_ref *ref_a = a, *ref_b = b;

 return strcmp(ref_a->head.name, ref_b->head.name);
}
