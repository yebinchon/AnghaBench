
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_link {int kref; int status; int flags; } ;


 int DL_FLAG_MANAGED ;
 int DL_STATE_NONE ;
 int WRITE_ONCE (int ,int ) ;
 int __device_link_del ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void device_link_drop_managed(struct device_link *link)
{
 link->flags &= ~DL_FLAG_MANAGED;
 WRITE_ONCE(link->status, DL_STATE_NONE);
 kref_put(&link->kref, __device_link_del);
}
