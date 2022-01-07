
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_destroy (int *) ;
 int * pseudo_lock_class ;
 scalar_t__ pseudo_lock_major ;
 int unregister_chrdev (scalar_t__,char*) ;

void rdt_pseudo_lock_release(void)
{
 class_destroy(pseudo_lock_class);
 pseudo_lock_class = ((void*)0);
 unregister_chrdev(pseudo_lock_major, "pseudo_lock");
 pseudo_lock_major = 0;
}
