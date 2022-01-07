
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_kicks; } ;
struct vector_private {int tx_queue; TYPE_1__ estats; } ;


 int vector_send (int ) ;

__attribute__((used)) static void vector_tx_poll(unsigned long data)
{
 struct vector_private *vp = (struct vector_private *)data;

 vp->estats.tx_kicks++;
 vector_send(vp->tx_queue);
}
