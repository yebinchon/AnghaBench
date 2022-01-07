
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
 int rbd_assert (int) ;

__attribute__((used)) static void __rbd_object_map_set(struct rbd_device *rbd_dev, u64 objno, u8 val)
{
 u64 index;
 u8 shift;
 u8 *p;

 lockdep_assert_held(&rbd_dev->object_map_lock);
 rbd_assert(!(val & ~OBJ_MASK));

 __rbd_object_map_index(rbd_dev, objno, &index, &shift);
 p = &rbd_dev->object_map[index];
 *p = (*p & ~(OBJ_MASK << shift)) | (val << shift);
}
