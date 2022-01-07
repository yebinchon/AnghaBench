
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_device {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct pmf_device *pmf_get_device(struct pmf_device *dev)
{
 kref_get(&dev->ref);
 return dev;
}
