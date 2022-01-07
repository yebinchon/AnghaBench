
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_idx_option {int version; int off32_limit; } ;


 int memset (struct pack_idx_option*,int ,int) ;

void reset_pack_idx_option(struct pack_idx_option *opts)
{
 memset(opts, 0, sizeof(*opts));
 opts->version = 2;
 opts->off32_limit = 0x7fffffff;
}
