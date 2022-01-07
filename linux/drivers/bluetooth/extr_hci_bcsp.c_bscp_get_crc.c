
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bcsp_struct {TYPE_1__* rx_skb; } ;
struct TYPE_2__ {int len; int * data; } ;


 int get_unaligned_be16 (int *) ;

__attribute__((used)) static u16 bscp_get_crc(struct bcsp_struct *bcsp)
{
 return get_unaligned_be16(&bcsp->rx_skb->data[bcsp->rx_skb->len - 2]);
}
