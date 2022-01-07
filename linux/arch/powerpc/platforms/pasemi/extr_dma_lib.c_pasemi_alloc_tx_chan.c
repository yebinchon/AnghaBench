
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pasemi_dmachan_type { ____Placeholder_pasemi_dmachan_type } pasemi_dmachan_type ;


 int ENOSPC ;
 int MAX_TXCH ;


 int find_next_bit (int ,int,int) ;
 int test_and_clear_bit (int,int ) ;
 int txch_free ;

__attribute__((used)) static int pasemi_alloc_tx_chan(enum pasemi_dmachan_type type)
{
 int bit;
 int start, limit;

 switch (type & (129|128)) {
 case 129:
  start = 0;
  limit = 10;
  break;
 case 128:
  start = 10;
  limit = MAX_TXCH;
  break;
 default:
  start = 0;
  limit = MAX_TXCH;
  break;
 }
retry:
 bit = find_next_bit(txch_free, MAX_TXCH, start);
 if (bit >= limit)
  return -ENOSPC;
 if (!test_and_clear_bit(bit, txch_free))
  goto retry;

 return bit;
}
