
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMR_RD_BIT ;
 int AMR_WR_BIT ;
 int is_pkey_enabled (int) ;
 int pkeyshift (int) ;
 int read_amr () ;

__attribute__((used)) static inline bool pkey_allows_readwrite(int pkey)
{
 int pkey_shift = pkeyshift(pkey);

 if (!is_pkey_enabled(pkey))
  return 1;

 return !(read_amr() & ((AMR_RD_BIT|AMR_WR_BIT) << pkey_shift));
}
