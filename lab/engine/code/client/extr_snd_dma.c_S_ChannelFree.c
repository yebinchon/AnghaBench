
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * thesfx; } ;
typedef TYPE_1__ channel_t ;


 TYPE_1__* freelist ;

void S_ChannelFree(channel_t *v) {
 v->thesfx = ((void*)0);
 *(channel_t **)v = freelist;
 freelist = (channel_t*)v;
}
