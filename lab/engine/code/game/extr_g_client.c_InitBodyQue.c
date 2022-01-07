
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* classname; int neverFree; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_5__ {TYPE_1__** bodyQue; scalar_t__ bodyQueIndex; } ;


 int BODY_QUEUE_SIZE ;
 TYPE_1__* G_Spawn () ;
 TYPE_2__ level ;
 int qtrue ;

void InitBodyQue (void) {
 int i;
 gentity_t *ent;

 level.bodyQueIndex = 0;
 for (i=0; i<BODY_QUEUE_SIZE ; i++) {
  ent = G_Spawn();
  ent->classname = "bodyque";
  ent->neverFree = qtrue;
  level.bodyQue[i] = ent;
 }
}
