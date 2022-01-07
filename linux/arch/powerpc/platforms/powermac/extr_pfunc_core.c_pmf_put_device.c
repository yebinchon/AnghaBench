
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_device {int ref; } ;


 int kref_put (int *,int ) ;
 int pmf_release_device ;

__attribute__((used)) static inline void pmf_put_device(struct pmf_device *dev)
{
 kref_put(&dev->ref, pmf_release_device);
}
