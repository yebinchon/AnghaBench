
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switch_dev {int dummy; } ;
struct mvsw61xx_state {TYPE_1__* ports; } ;
struct TYPE_2__ {scalar_t__ pvid; } ;


 int EINVAL ;
 int MV_VLANS ;
 struct mvsw61xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int
mvsw61xx_set_port_pvid(struct switch_dev *dev, int port, int val)
{
 struct mvsw61xx_state *state = get_state(dev);

 if (val < 0 || val >= MV_VLANS)
  return -EINVAL;

 state->ports[port].pvid = (u16)val;

 return 0;
}
