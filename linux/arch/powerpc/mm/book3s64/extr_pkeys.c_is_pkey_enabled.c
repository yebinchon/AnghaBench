
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WARN_ON (int) ;
 int pkeyshift (int) ;
 int read_uamor () ;

__attribute__((used)) static bool is_pkey_enabled(int pkey)
{
 u64 uamor = read_uamor();
 u64 pkey_bits = 0x3ul << pkeyshift(pkey);
 u64 uamor_pkey_bits = (uamor & pkey_bits);





 WARN_ON(uamor_pkey_bits && (uamor_pkey_bits != pkey_bits));
 return !!(uamor_pkey_bits);
}
