
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q_wait; } ;
struct drbd_connection {TYPE_1__ sender_work; } ;


 int wake_up (int *) ;

__attribute__((used)) static void wake_all_senders(struct drbd_connection *connection)
{
 wake_up(&connection->sender_work.q_wait);
}
