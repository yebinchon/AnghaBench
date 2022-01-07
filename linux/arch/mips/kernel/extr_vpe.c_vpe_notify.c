
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_notifications {int list; } ;
struct vpe {int notify; } ;


 struct vpe* get_vpe (int) ;
 int list_add (int *,int *) ;

int vpe_notify(int index, struct vpe_notifications *notify)
{
 struct vpe *v = get_vpe(index);

 if (v == ((void*)0))
  return -1;

 list_add(&notify->list, &v->notify);
 return 0;
}
