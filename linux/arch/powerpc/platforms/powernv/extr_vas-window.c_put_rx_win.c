
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int num_txwins; int tx_win; } ;


 int WARN_ON_ONCE (int ) ;
 int atomic_dec (int *) ;

__attribute__((used)) static void put_rx_win(struct vas_window *rxwin)
{

 WARN_ON_ONCE(rxwin->tx_win);

 atomic_dec(&rxwin->num_txwins);
}
