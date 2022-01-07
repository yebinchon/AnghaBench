
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;
 int txch_free ;

__attribute__((used)) static void pasemi_free_tx_chan(int chan)
{
 BUG_ON(test_bit(chan, txch_free));
 set_bit(chan, txch_free);
}
