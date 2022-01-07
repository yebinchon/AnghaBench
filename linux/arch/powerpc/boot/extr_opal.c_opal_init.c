
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {void* entry; void* base; } ;


 void* be64_to_cpu (void*) ;
 void* finddevice (char*) ;
 scalar_t__ getprop (void*,char*,void**,int) ;
 TYPE_1__ opal ;

__attribute__((used)) static void opal_init(void)
{
 void *opal_node;

 opal_node = finddevice("/ibm,opal");
 if (!opal_node)
  return;
 if (getprop(opal_node, "opal-base-address", &opal.base, sizeof(u64)) < 0)
  return;
 opal.base = be64_to_cpu(opal.base);
 if (getprop(opal_node, "opal-entry-address", &opal.entry, sizeof(u64)) < 0)
  return;
 opal.entry = be64_to_cpu(opal.entry);
}
