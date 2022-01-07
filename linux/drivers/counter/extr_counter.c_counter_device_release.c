
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct counter_device_state {int id; int num_groups; int groups_list; struct counter_device_state* const groups; } ;
struct counter_device {struct counter_device_state* device_state; } ;


 int counter_device_groups_list_free (int ,int ) ;
 int counter_ida ;
 struct counter_device* dev_get_drvdata (struct device*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct counter_device_state* const) ;

__attribute__((used)) static void counter_device_release(struct device *dev)
{
 struct counter_device *const counter = dev_get_drvdata(dev);
 struct counter_device_state *const device_state = counter->device_state;

 kfree(device_state->groups);
 counter_device_groups_list_free(device_state->groups_list,
     device_state->num_groups);
 ida_simple_remove(&counter_ida, device_state->id);
 kfree(device_state);
}
