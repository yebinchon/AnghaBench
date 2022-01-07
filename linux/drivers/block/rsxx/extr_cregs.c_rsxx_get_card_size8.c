
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rsxx_cardinfo {int dummy; } ;
typedef int size ;


 int CREG_ADD_CARD_SIZE ;
 int RSXX_HW_BLK_SIZE ;
 int rsxx_creg_read (struct rsxx_cardinfo*,int ,int,unsigned int*,int ) ;

int rsxx_get_card_size8(struct rsxx_cardinfo *card, u64 *size8)
{
 unsigned int size;
 int st;

 st = rsxx_creg_read(card, CREG_ADD_CARD_SIZE,
    sizeof(size), &size, 0);
 if (st)
  return st;

 *size8 = (u64)size * RSXX_HW_BLK_SIZE;
 return 0;
}
