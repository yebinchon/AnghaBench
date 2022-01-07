
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int MAX_NUMNODES ;
 int NUMA_NO_NODE ;
 scalar_t__ distance_ref_points_depth ;
 int initialize_distance_lookup_table (int,int const*) ;
 size_t min_common_depth ;
 int numa_enabled ;
 scalar_t__ of_read_number (int const*,int) ;

__attribute__((used)) static int associativity_to_nid(const __be32 *associativity)
{
 int nid = NUMA_NO_NODE;

 if (!numa_enabled)
  goto out;

 if (of_read_number(associativity, 1) >= min_common_depth)
  nid = of_read_number(&associativity[min_common_depth], 1);


 if (nid == 0xffff || nid >= MAX_NUMNODES)
  nid = NUMA_NO_NODE;

 if (nid > 0 &&
  of_read_number(associativity, 1) >= distance_ref_points_depth) {



  initialize_distance_lookup_table(nid, associativity + 1);
 }

out:
 return nid;
}
