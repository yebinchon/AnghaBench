
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static bool is_bitwise_subset(u64 superset, u64 subset, u64 mask)
{
 superset &= mask;
 subset &= mask;

 return (superset | subset) == superset;
}
