
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RBD_SINGLE_MAJOR_PART_SHIFT ;

__attribute__((used)) static int rbd_dev_id_to_minor(int dev_id)
{
 return dev_id << RBD_SINGLE_MAJOR_PART_SHIFT;
}
