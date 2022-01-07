
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int rxch_free ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void pasemi_free_rx_chan(int chan)
{
 BUG_ON(test_bit(chan, rxch_free));
 set_bit(chan, rxch_free);
}
