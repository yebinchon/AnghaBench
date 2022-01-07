
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sthyi_sctns {int dummy; } ;


 int fill_diag (struct sthyi_sctns*) ;
 int fill_hdr (struct sthyi_sctns*) ;
 int fill_stsi (struct sthyi_sctns*) ;
 int sthyi (scalar_t__,scalar_t__*) ;
 scalar_t__ test_facility (int) ;

__attribute__((used)) static int fill_dst(void *dst, u64 *rc)
{
 struct sthyi_sctns *sctns = (struct sthyi_sctns *)dst;





 if (test_facility(74))
  return sthyi((u64)dst, rc);

 fill_hdr(sctns);
 fill_stsi(sctns);
 fill_diag(sctns);
 *rc = 0;
 return 0;
}
