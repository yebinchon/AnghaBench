
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {char const* skcomp_ix; struct skd_device* skcomp_cycle; TYPE_1__* pdev; int queue_low_water_mark; int dev_max_queue_depth; int cur_max_queue_depth; int state; int drive_state; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,struct skd_device*,char const*,...) ;
 int skd_drive_state_to_str (int ) ;
 int skd_in_flight (struct skd_device*) ;
 int skd_skdev_state_to_str (int ) ;

__attribute__((used)) static void skd_log_skdev(struct skd_device *skdev, const char *event)
{
 dev_dbg(&skdev->pdev->dev, "skdev=%p event='%s'\n", skdev, event);
 dev_dbg(&skdev->pdev->dev, "  drive_state=%s(%d) driver_state=%s(%d)\n",
  skd_drive_state_to_str(skdev->drive_state), skdev->drive_state,
  skd_skdev_state_to_str(skdev->state), skdev->state);
 dev_dbg(&skdev->pdev->dev, "  busy=%d limit=%d dev=%d lowat=%d\n",
  skd_in_flight(skdev), skdev->cur_max_queue_depth,
  skdev->dev_max_queue_depth, skdev->queue_low_water_mark);
 dev_dbg(&skdev->pdev->dev, "  cycle=%d cycle_ix=%d\n",
  skdev->skcomp_cycle, skdev->skcomp_ix);
}
