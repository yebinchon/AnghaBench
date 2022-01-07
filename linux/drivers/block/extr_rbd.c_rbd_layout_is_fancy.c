
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_file_layout {scalar_t__ stripe_unit; scalar_t__ object_size; } ;



__attribute__((used)) static bool rbd_layout_is_fancy(struct ceph_file_layout *l)
{
 return l->stripe_unit != l->object_size;
}
