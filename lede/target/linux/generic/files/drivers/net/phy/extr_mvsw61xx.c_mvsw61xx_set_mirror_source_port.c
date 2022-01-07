
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct mvsw61xx_state {int source_port; } ;


 struct mvsw61xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int mvsw61xx_set_mirror_source_port(struct switch_dev *dev,
  const struct switch_attr *attr, struct switch_val *val)
{
 struct mvsw61xx_state *state = get_state(dev);

 state->source_port = val->value.i;

 return 0;
}
