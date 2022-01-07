
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_link {int flags; int kref; } ;


 int DL_FLAG_STATELESS ;
 int WARN (int,char*) ;
 int __device_link_del ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void device_link_put_kref(struct device_link *link)
{
 if (link->flags & DL_FLAG_STATELESS)
  kref_put(&link->kref, __device_link_del);
 else
  WARN(1, "Unable to drop a managed device link reference\n");
}
