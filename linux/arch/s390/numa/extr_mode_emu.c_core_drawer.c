
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct toptree {TYPE_2__* parent; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct toptree* parent; } ;



__attribute__((used)) static struct toptree *core_drawer(struct toptree *core)
{
 return core->parent->parent->parent;
}
