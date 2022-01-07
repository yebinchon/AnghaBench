
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int RMAP_NESTED_GPA_MASK ;
 int RMAP_NESTED_LPID_MASK ;

__attribute__((used)) static inline bool kvmhv_n_rmap_is_equal(u64 rmap_1, u64 rmap_2)
{
 return !((rmap_1 ^ rmap_2) & (RMAP_NESTED_LPID_MASK |
           RMAP_NESTED_GPA_MASK));
}
