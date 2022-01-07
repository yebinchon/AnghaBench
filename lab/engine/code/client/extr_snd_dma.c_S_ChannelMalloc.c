
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int allocTime; } ;
typedef TYPE_1__ channel_t ;


 int Com_Milliseconds () ;
 TYPE_1__* freelist ;

channel_t* S_ChannelMalloc( void ) {
 channel_t *v;
 if (freelist == ((void*)0)) {
  return ((void*)0);
 }
 v = freelist;
 freelist = *(channel_t **)freelist;
 v->allocTime = Com_Milliseconds();
 return v;
}
