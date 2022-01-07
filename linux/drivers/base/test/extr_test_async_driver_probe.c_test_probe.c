
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {scalar_t__ probe_type; } ;


 scalar_t__ PROBE_PREFER_ASYNCHRONOUS ;
 int TEST_PROBE_DELAY ;
 int async_completed ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dev_to_node (struct device*) ;
 int dev_warn (struct device*,char*,scalar_t__,scalar_t__) ;
 int errors ;
 int msleep (int ) ;
 scalar_t__ numa_node_id () ;
 int timeout ;
 int warnings ;

__attribute__((used)) static int test_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;






 if (atomic_read(&timeout)) {
  dev_err(dev, "async probe took too long\n");
  atomic_inc(&errors);
 } else {
  dev_dbg(&pdev->dev, "sleeping for %d msecs in probe\n",
    TEST_PROBE_DELAY);
  msleep(TEST_PROBE_DELAY);
  dev_dbg(&pdev->dev, "done sleeping\n");
 }





 if (dev->driver->probe_type == PROBE_PREFER_ASYNCHRONOUS) {
  if (dev_to_node(dev) != numa_node_id()) {
   dev_warn(dev, "NUMA node mismatch %d != %d\n",
     dev_to_node(dev), numa_node_id());
   atomic_inc(&warnings);
  }

  atomic_inc(&async_completed);
 }

 return 0;
}
