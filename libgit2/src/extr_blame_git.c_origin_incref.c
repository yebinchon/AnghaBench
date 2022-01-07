
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcnt; } ;
typedef TYPE_1__ git_blame__origin ;



__attribute__((used)) static git_blame__origin *origin_incref(git_blame__origin *o)
{
 if (o)
  o->refcnt++;
 return o;
}
