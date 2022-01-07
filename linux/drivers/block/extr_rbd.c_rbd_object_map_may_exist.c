
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct rbd_device {int dummy; } ;


 scalar_t__ OBJECT_NONEXISTENT ;
 scalar_t__ rbd_object_map_get (struct rbd_device*,int ) ;
 int use_object_map (struct rbd_device*) ;

__attribute__((used)) static bool rbd_object_map_may_exist(struct rbd_device *rbd_dev, u64 objno)
{
 u8 state;


 if (!use_object_map(rbd_dev))
  return 1;

 state = rbd_object_map_get(rbd_dev, objno);
 return state != OBJECT_NONEXISTENT;
}
