
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ Tree ;
struct TYPE_2__ {scalar_t__ node; scalar_t__ printed; } ;


 TYPE_1__* ids ;
 size_t nid ;

int nodeid(Tree p) {
 int i = 1;

 ids[nid].node = p;
 while (ids[i].node != p)
  i++;
 if (i == nid)
  ids[nid++].printed = 0;
 return i;
}
