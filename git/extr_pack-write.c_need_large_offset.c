
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pack_idx_option {int off32_limit; int anomaly_nr; int anomaly; } ;
typedef int ofsval ;
typedef int off_t ;


 int bsearch (int*,int ,int ,int,int ) ;
 int cmp_uint32 ;

__attribute__((used)) static int need_large_offset(off_t offset, const struct pack_idx_option *opts)
{
 uint32_t ofsval;

 if ((offset >> 31) || (opts->off32_limit < offset))
  return 1;
 if (!opts->anomaly_nr)
  return 0;
 ofsval = offset;
 return !!bsearch(&ofsval, opts->anomaly, opts->anomaly_nr,
    sizeof(ofsval), cmp_uint32);
}
