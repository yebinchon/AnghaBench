
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u64 ;
struct rbd_device {int* object_map; int object_map_lock; } ;


 int OBJ_MASK ;
 int __rbd_object_map_index (struct rbd_device*,size_t,size_t*,int*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static u8 __rbd_object_map_get(struct rbd_device *rbd_dev, u64 objno)
{
 u64 index;
 u8 shift;

 lockdep_assert_held(&rbd_dev->object_map_lock);
 __rbd_object_map_index(rbd_dev, objno, &index, &shift);
 return (rbd_dev->object_map[index] >> shift) & OBJ_MASK;
}
