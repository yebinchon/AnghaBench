
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int ** distance_lookup_table ;
 int * distance_ref_points ;
 int distance_ref_points_depth ;
 int form1_affinity ;
 int of_read_number (int const*,int) ;

__attribute__((used)) static void initialize_distance_lookup_table(int nid,
  const __be32 *associativity)
{
 int i;

 if (!form1_affinity)
  return;

 for (i = 0; i < distance_ref_points_depth; i++) {
  const __be32 *entry;

  entry = &associativity[be32_to_cpu(distance_ref_points[i]) - 1];
  distance_lookup_table[nid][i] = of_read_number(entry, 1);
 }
}
