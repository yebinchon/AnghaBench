
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int AMR_RD_BIT ;
 int AMR_WR_BIT ;
 int IAMR_EX_BIT ;
 int is_pkey_enabled (int) ;
 int pkeyshift (int) ;
 int read_amr () ;
 int read_iamr () ;

__attribute__((used)) static bool pkey_access_permitted(int pkey, bool write, bool execute)
{
 int pkey_shift;
 u64 amr;

 if (!is_pkey_enabled(pkey))
  return 1;

 pkey_shift = pkeyshift(pkey);
 if (execute && !(read_iamr() & (IAMR_EX_BIT << pkey_shift)))
  return 1;

 amr = read_amr();
 return ((!write && !(amr & (AMR_RD_BIT << pkey_shift))) ||
  (write && !(amr & (AMR_WR_BIT << pkey_shift))));
}
