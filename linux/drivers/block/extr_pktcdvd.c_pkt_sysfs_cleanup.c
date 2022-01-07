
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_destroy (int *) ;
 int * class_pktcdvd ;

__attribute__((used)) static void pkt_sysfs_cleanup(void)
{
 if (class_pktcdvd)
  class_destroy(class_pktcdvd);
 class_pktcdvd = ((void*)0);
}
