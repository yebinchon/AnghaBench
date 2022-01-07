
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe {int minor; int notify; int list; int tc; } ;
struct TYPE_2__ {int vpe_list_lock; int vpe_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int VPE_MODULE_MINOR ;
 struct vpe* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ vpecontrol ;

struct vpe *alloc_vpe(int minor)
{
 struct vpe *v;

 v = kzalloc(sizeof(struct vpe), GFP_KERNEL);
 if (v == ((void*)0))
  goto out;

 INIT_LIST_HEAD(&v->tc);
 spin_lock(&vpecontrol.vpe_list_lock);
 list_add_tail(&v->list, &vpecontrol.vpe_list);
 spin_unlock(&vpecontrol.vpe_list_lock);

 INIT_LIST_HEAD(&v->notify);
 v->minor = VPE_MODULE_MINOR;

out:
 return v;
}
