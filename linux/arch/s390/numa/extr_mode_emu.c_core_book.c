
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toptree {TYPE_1__* parent; } ;
struct TYPE_2__ {struct toptree* parent; } ;



__attribute__((used)) static struct toptree *core_book(struct toptree *core)
{
 return core->parent->parent;
}
