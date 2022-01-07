
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parsed; } ;
struct tag {scalar_t__ date; TYPE_1__ object; int * tagged; int tag; } ;


 int free (int ) ;

void release_tag_memory(struct tag *t)
{
 free(t->tag);
 t->tagged = ((void*)0);
 t->object.parsed = 0;
 t->date = 0;
}
