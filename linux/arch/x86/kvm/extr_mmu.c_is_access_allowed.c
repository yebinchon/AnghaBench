
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PFERR_FETCH_MASK ;
 int PFERR_WRITE_MASK ;
 int PT_PRESENT_MASK ;
 int is_executable_pte (int) ;
 int is_writable_pte (int) ;

__attribute__((used)) static bool is_access_allowed(u32 fault_err_code, u64 spte)
{
 if (fault_err_code & PFERR_FETCH_MASK)
  return is_executable_pte(spte);

 if (fault_err_code & PFERR_WRITE_MASK)
  return is_writable_pte(spte);


 return spte & PT_PRESENT_MASK;
}
