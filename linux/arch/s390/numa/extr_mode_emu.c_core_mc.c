
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toptree {struct toptree* parent; } ;



__attribute__((used)) static struct toptree *core_mc(struct toptree *core)
{
 return core->parent;
}
