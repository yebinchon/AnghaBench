
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __be32 ;
typedef int __be16 ;


 int cpu_to_be16 (int) ;
 int cpu_to_be32 (unsigned int) ;

__attribute__((used)) static int format_adata(u8 *adata, unsigned int a)
{
 int len = 0;




 if (a < 65280) {
  *(__be16 *)adata = cpu_to_be16(a);
  len = 2;
 } else {
  *(__be16 *)adata = cpu_to_be16(0xfffe);
  *(__be32 *)&adata[2] = cpu_to_be32(a);
  len = 6;
 }

 return len;
}
