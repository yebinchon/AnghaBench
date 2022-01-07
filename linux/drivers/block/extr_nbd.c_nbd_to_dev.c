
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {int disk; } ;
struct device {int dummy; } ;


 struct device* disk_to_dev (int ) ;

__attribute__((used)) static inline struct device *nbd_to_dev(struct nbd_device *nbd)
{
 return disk_to_dev(nbd->disk);
}
