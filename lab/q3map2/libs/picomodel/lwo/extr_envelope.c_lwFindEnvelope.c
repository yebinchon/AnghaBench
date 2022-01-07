
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; struct TYPE_4__* next; } ;
typedef TYPE_1__ lwEnvelope ;



lwEnvelope *lwFindEnvelope( lwEnvelope *list, int index ){
 lwEnvelope *env;

 env = list;
 while ( env ) {
  if ( env->index == index ) {
   break;
  }
  env = env->next;
 }
 return env;
}
