
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdt_resource {int dummy; } ;
struct TYPE_2__ {int x86_model; int x86; } ;


 TYPE_1__ boot_cpu_data ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static inline bool rdt_get_mb_table(struct rdt_resource *r)
{



 pr_info("MBA b/w map not implemented for cpu:%d, model:%d",
  boot_cpu_data.x86, boot_cpu_data.x86_model);

 return 0;
}
