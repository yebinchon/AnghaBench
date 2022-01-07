
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct rbd_device {int object_map_lock; } ;


 int __rbd_object_map_get (struct rbd_device*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u8 rbd_object_map_get(struct rbd_device *rbd_dev, u64 objno)
{
 u8 state;

 spin_lock(&rbd_dev->object_map_lock);
 state = __rbd_object_map_get(rbd_dev, objno);
 spin_unlock(&rbd_dev->object_map_lock);
 return state;
}
