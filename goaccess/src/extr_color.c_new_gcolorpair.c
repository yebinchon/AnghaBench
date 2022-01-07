
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int idx; } ;
typedef TYPE_1__ GColorPair ;


 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static GColorPair *
new_gcolorpair (void)
{
  GColorPair *pair = xcalloc (1, sizeof (GColorPair));


  pair->idx = 2;

  return pair;
}
