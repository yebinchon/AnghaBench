
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_resources {int dummy; } ;


 int apei_get_res_callback ;
 int arch_apei_filter_addr (int ,struct apei_resources*) ;

__attribute__((used)) static int apei_get_arch_resources(struct apei_resources *resources)

{
 return arch_apei_filter_addr(apei_get_res_callback, resources);
}
