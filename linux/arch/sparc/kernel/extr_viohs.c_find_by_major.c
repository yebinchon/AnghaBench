
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vio_version {scalar_t__ major; } ;
struct vio_driver_state {int ver_table_entries; struct vio_version* ver_table; } ;



__attribute__((used)) static struct vio_version *find_by_major(struct vio_driver_state *vio,
      u16 major)
{
 struct vio_version *ret = ((void*)0);
 int i;

 for (i = 0; i < vio->ver_table_entries; i++) {
  struct vio_version *v = &vio->ver_table[i];
  if (v->major <= major) {
   ret = v;
   break;
  }
 }
 return ret;
}
