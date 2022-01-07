
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_resource {struct drbd_resource* name; int req_lock; int adm_mutex; int conf_update; int resources; int write_ordering; int connections; int devices; int kref; int cpu_mask; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WO_BDEV_FLUSH ;
 int drbd_debugfs_resource_add (struct drbd_resource*) ;
 int drbd_resources ;
 int idr_init (int *) ;
 int kfree (struct drbd_resource*) ;
 int kref_init (int *) ;
 struct drbd_resource* kstrdup (char const*,int ) ;
 struct drbd_resource* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int zalloc_cpumask_var (int *,int ) ;

struct drbd_resource *drbd_create_resource(const char *name)
{
 struct drbd_resource *resource;

 resource = kzalloc(sizeof(struct drbd_resource), GFP_KERNEL);
 if (!resource)
  goto fail;
 resource->name = kstrdup(name, GFP_KERNEL);
 if (!resource->name)
  goto fail_free_resource;
 if (!zalloc_cpumask_var(&resource->cpu_mask, GFP_KERNEL))
  goto fail_free_name;
 kref_init(&resource->kref);
 idr_init(&resource->devices);
 INIT_LIST_HEAD(&resource->connections);
 resource->write_ordering = WO_BDEV_FLUSH;
 list_add_tail_rcu(&resource->resources, &drbd_resources);
 mutex_init(&resource->conf_update);
 mutex_init(&resource->adm_mutex);
 spin_lock_init(&resource->req_lock);
 drbd_debugfs_resource_add(resource);
 return resource;

fail_free_name:
 kfree(resource->name);
fail_free_resource:
 kfree(resource);
fail:
 return ((void*)0);
}
