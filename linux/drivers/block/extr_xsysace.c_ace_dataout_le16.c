
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ace_device {int * data_ptr; scalar_t__ baseaddr; } ;


 int ACE_FIFO_SIZE ;
 int out_be16 (scalar_t__,int ) ;

__attribute__((used)) static void ace_dataout_le16(struct ace_device *ace)
{
 int i = ACE_FIFO_SIZE / 2;
 u16 *src = ace->data_ptr;
 while (i--)
  out_be16(ace->baseaddr + 0x40, *src++);
 ace->data_ptr = src;
}
