
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; struct TYPE_2__* prev; int state; } ;


 int * NB_Alloc ;
 TYPE_1__ NB_Head ;
 int NB_MAGIC_ALLOCA ;
 int NB_max ;
 int NET_BUFFERS ;
 long NET_BUFFER_ALIGN ;
 int * NetBufferSpace ;

void init_netbuffers (void) {
  NB_max = NET_BUFFERS;
  NB_Head.state = NB_MAGIC_ALLOCA;
  NB_Head.prev = NB_Head.next = &NB_Head;
  NB_Alloc = &NetBufferSpace[(NET_BUFFER_ALIGN - (long) NetBufferSpace) & (NET_BUFFER_ALIGN - 1)];
}
