
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int winid; size_t cop; int tx_win; int user_win; } ;
struct vas_instance {int mutex; struct vas_window** windows; struct vas_window** rxwin; } ;


 int WARN_ON_ONCE (struct vas_window*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void set_vinst_win(struct vas_instance *vinst,
   struct vas_window *window)
{
 int id = window->winid;

 mutex_lock(&vinst->mutex);





 if (!window->user_win && !window->tx_win) {
  WARN_ON_ONCE(vinst->rxwin[window->cop]);
  vinst->rxwin[window->cop] = window;
 }

 WARN_ON_ONCE(vinst->windows[id] != ((void*)0));
 vinst->windows[id] = window;

 mutex_unlock(&vinst->mutex);
}
