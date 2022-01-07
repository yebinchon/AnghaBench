
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct admhcd {int dummy; } ;
typedef int __hc32 ;


 scalar_t__ big_endian_desc (struct admhcd const*) ;
 int cpu_to_be32p (int const*) ;
 int cpu_to_le32p (int const*) ;

__attribute__((used)) static inline __hc32 cpu_to_hc32p(const struct admhcd *ahcd, const u32 *x)
{
 return big_endian_desc(ahcd) ?
  cpu_to_be32p(x) :
  cpu_to_le32p(x);
}
