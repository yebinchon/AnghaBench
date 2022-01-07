
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {int config_refs; } ;


 int refcount_read (int *) ;

__attribute__((used)) static int find_free_cb(int id, void *ptr, void *data)
{
 struct nbd_device *nbd = ptr;
 struct nbd_device **found = data;

 if (!refcount_read(&nbd->config_refs)) {
  *found = nbd;
  return 1;
 }
 return 0;
}
