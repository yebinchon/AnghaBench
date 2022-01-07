
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int pvc_dump_string (unsigned char*) ;

__attribute__((used)) static int lasat_panic_display(struct notifier_block *this,
        unsigned long event, void *ptr)
{






 return NOTIFY_DONE;
}
