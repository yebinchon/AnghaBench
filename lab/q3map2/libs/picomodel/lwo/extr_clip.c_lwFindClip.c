
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; struct TYPE_4__* next; } ;
typedef TYPE_1__ lwClip ;



lwClip *lwFindClip( lwClip *list, int index ){
 lwClip *clip;

 clip = list;
 while ( clip ) {
  if ( clip->index == index ) {
   break;
  }
  clip = clip->next;
 }
 return clip;
}
