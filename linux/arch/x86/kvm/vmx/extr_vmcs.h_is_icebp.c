
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int INTR_INFO_INTR_TYPE_MASK ;
 int INTR_INFO_VALID_MASK ;
 int INTR_TYPE_PRIV_SW_EXCEPTION ;

__attribute__((used)) static inline bool is_icebp(u32 intr_info)
{
 return (intr_info & (INTR_INFO_INTR_TYPE_MASK | INTR_INFO_VALID_MASK))
  == (INTR_TYPE_PRIV_SW_EXCEPTION | INTR_INFO_VALID_MASK);
}
