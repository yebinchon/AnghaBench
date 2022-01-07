
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int of_node; TYPE_1__* parent; int * bus; int * type; } ;
struct counter_device_state {int id; int num_groups; int groups_list; struct counter_device_state* groups; TYPE_2__ dev; } ;
struct counter_device {TYPE_1__* parent; struct counter_device_state* device_state; } ;
struct TYPE_6__ {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int counter_bus_type ;
 int counter_device_groups_list_free (int ,int ) ;
 int counter_device_groups_list_prepare (struct counter_device* const) ;
 int counter_device_groups_prepare (struct counter_device_state*) ;
 int counter_device_type ;
 int counter_ida ;
 int dev_set_drvdata (TYPE_2__*,struct counter_device* const) ;
 int dev_set_name (TYPE_2__*,char*,int) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct counter_device_state*) ;
 struct counter_device_state* kzalloc (int,int ) ;

int counter_register(struct counter_device *const counter)
{
 struct counter_device_state *device_state;
 int err;


 device_state = kzalloc(sizeof(*device_state), GFP_KERNEL);
 if (!device_state)
  return -ENOMEM;
 counter->device_state = device_state;


 device_state->id = ida_simple_get(&counter_ida, 0, 0, GFP_KERNEL);
 if (device_state->id < 0) {
  err = device_state->id;
  goto err_free_device_state;
 }


 device_state->dev.type = &counter_device_type;
 device_state->dev.bus = &counter_bus_type;
 if (counter->parent) {
  device_state->dev.parent = counter->parent;
  device_state->dev.of_node = counter->parent->of_node;
 }
 dev_set_name(&device_state->dev, "counter%d", device_state->id);
 device_initialize(&device_state->dev);
 dev_set_drvdata(&device_state->dev, counter);


 err = counter_device_groups_list_prepare(counter);
 if (err)
  goto err_free_id;


 err = counter_device_groups_prepare(device_state);
 if (err)
  goto err_free_groups_list;


 err = device_add(&device_state->dev);
 if (err)
  goto err_free_groups;

 return 0;

err_free_groups:
 kfree(device_state->groups);
err_free_groups_list:
 counter_device_groups_list_free(device_state->groups_list,
     device_state->num_groups);
err_free_id:
 ida_simple_remove(&counter_ida, device_state->id);
err_free_device_state:
 kfree(device_state);
 return err;
}
