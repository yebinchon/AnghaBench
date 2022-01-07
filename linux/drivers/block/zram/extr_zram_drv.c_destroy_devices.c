
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_ZCOMP_PREPARE ;
 int class_unregister (int *) ;
 int cpuhp_remove_multi_state (int ) ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int *,int *) ;
 int unregister_blkdev (int ,char*) ;
 int zram_control_class ;
 int zram_debugfs_destroy () ;
 int zram_index_idr ;
 int zram_major ;
 int zram_remove_cb ;

__attribute__((used)) static void destroy_devices(void)
{
 class_unregister(&zram_control_class);
 idr_for_each(&zram_index_idr, &zram_remove_cb, ((void*)0));
 zram_debugfs_destroy();
 idr_destroy(&zram_index_idr);
 unregister_blkdev(zram_major, "zram");
 cpuhp_remove_multi_state(CPUHP_ZCOMP_PREPARE);
}
