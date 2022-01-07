
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_connection {int receiver_plug; } ;
struct TYPE_2__ {int * plug; } ;


 int blk_finish_plug (int *) ;
 int blk_start_plug (int *) ;
 TYPE_1__* current ;

__attribute__((used)) static void drbd_unplug_all_devices(struct drbd_connection *connection)
{
 if (current->plug == &connection->receiver_plug) {
  blk_finish_plug(&connection->receiver_plug);
  blk_start_plug(&connection->receiver_plug);
 }
}
