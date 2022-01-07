
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct admhcd {int dummy; } ;
typedef int __hc16 ;


 scalar_t__ big_endian_desc (struct admhcd const*) ;
 int cpu_to_be16p (int const*) ;
 int cpu_to_le16p (int const*) ;

__attribute__((used)) static inline __hc16 cpu_to_hc16p(const struct admhcd *ahcd, const u16 *x)
{
 return big_endian_desc(ahcd) ?
  cpu_to_be16p(x) :
  cpu_to_le16p(x);
}
