
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int rxwin; scalar_t__ tx_win; int num_txwins; } ;


 int EBUSY ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_read (int *) ;
 int clear_vinst_win (struct vas_window*) ;
 int poll_window_busy_state (struct vas_window*) ;
 int poll_window_castout (struct vas_window*) ;
 int poll_window_credits (struct vas_window*) ;
 int pr_devel (char*) ;
 int put_rx_win (int ) ;
 int unmap_paste_region (struct vas_window*) ;
 int unpin_close_window (struct vas_window*) ;
 int vas_window_free (struct vas_window*) ;

int vas_win_close(struct vas_window *window)
{
 if (!window)
  return 0;

 if (!window->tx_win && atomic_read(&window->num_txwins) != 0) {
  pr_devel("Attempting to close an active Rx window!\n");
  WARN_ON_ONCE(1);
  return -EBUSY;
 }

 unmap_paste_region(window);

 clear_vinst_win(window);

 poll_window_busy_state(window);

 unpin_close_window(window);

 poll_window_credits(window);

 poll_window_castout(window);


 if (window->tx_win)
  put_rx_win(window->rxwin);

 vas_window_free(window);

 return 0;
}
