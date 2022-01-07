
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int INTR_INFO_INTR_TYPE_MASK ;
 int INTR_INFO_VALID_MASK ;
 int INTR_INFO_VECTOR_MASK ;
 int INTR_TYPE_HARD_EXCEPTION ;
 int MC_VECTOR ;

__attribute__((used)) static inline bool is_machine_check(u32 intr_info)
{
 return (intr_info & (INTR_INFO_INTR_TYPE_MASK | INTR_INFO_VECTOR_MASK |
        INTR_INFO_VALID_MASK)) ==
  (INTR_TYPE_HARD_EXCEPTION | MC_VECTOR | INTR_INFO_VALID_MASK);
}
