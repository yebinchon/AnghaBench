
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int mcs814x_wdt_set_timeout (struct watchdog_device*,int ) ;
 int mcs814x_wdt_start (struct watchdog_device*) ;
 int mcs814x_wdt_stop (struct watchdog_device*) ;

__attribute__((used)) static int mcs814x_wdt_ping(struct watchdog_device *dev)
{

 mcs814x_wdt_stop(dev);
 mcs814x_wdt_set_timeout(dev, dev->timeout);
 mcs814x_wdt_start(dev);

 return 0;
}
