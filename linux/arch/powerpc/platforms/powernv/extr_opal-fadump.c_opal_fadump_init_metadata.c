
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_fadump_mem_struct {scalar_t__ fadumphdr_addr; scalar_t__ registered_regions; scalar_t__ region_cnt; int version; } ;


 int OPAL_FADUMP_VERSION ;

__attribute__((used)) static void opal_fadump_init_metadata(struct opal_fadump_mem_struct *fdm)
{
 fdm->version = OPAL_FADUMP_VERSION;
 fdm->region_cnt = 0;
 fdm->registered_regions = 0;
 fdm->fadumphdr_addr = 0;
}
