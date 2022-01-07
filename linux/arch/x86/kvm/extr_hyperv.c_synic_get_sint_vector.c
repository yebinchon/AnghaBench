
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HV_SYNIC_SINT_MASKED ;
 int HV_SYNIC_SINT_VECTOR_MASK ;

__attribute__((used)) static inline int synic_get_sint_vector(u64 sint_value)
{
 if (sint_value & HV_SYNIC_SINT_MASKED)
  return -1;
 return sint_value & HV_SYNIC_SINT_VECTOR_MASK;
}
