
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {scalar_t__ current_tle_writes; int current_tle_nr; } ;


 int atomic_inc (int *) ;
 int wake_all_senders (struct drbd_connection*) ;

void start_new_tl_epoch(struct drbd_connection *connection)
{

 if (connection->current_tle_writes == 0)
  return;

 connection->current_tle_writes = 0;
 atomic_inc(&connection->current_tle_nr);
 wake_all_senders(connection);
}
