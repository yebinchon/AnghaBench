
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int camellia_setup256 (unsigned char*,int *) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static void camellia_setup192(const unsigned char *key, u64 *subkey)
{
 unsigned char kk[32];
 u64 krl, krr;

 memcpy(kk, key, 24);
 memcpy((unsigned char *)&krl, key+16, 8);
 krr = ~krl;
 memcpy(kk+24, (unsigned char *)&krr, 8);
 camellia_setup256(kk, subkey);
}
