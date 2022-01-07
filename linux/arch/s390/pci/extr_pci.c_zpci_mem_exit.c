
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int ) ;
 int kmem_cache_destroy (int ) ;
 int zdev_fmb_cache ;
 int zpci_iomap_bitmap ;
 int zpci_iomap_start ;

__attribute__((used)) static void zpci_mem_exit(void)
{
 kfree(zpci_iomap_bitmap);
 kfree(zpci_iomap_start);
 kmem_cache_destroy(zdev_fmb_cache);
}
