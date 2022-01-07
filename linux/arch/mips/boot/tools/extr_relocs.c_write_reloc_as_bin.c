
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int cpu_to_elf32 (int ) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int memcpy (unsigned char*,int *,int) ;

__attribute__((used)) static int write_reloc_as_bin(uint32_t v, FILE *f)
{
 unsigned char buf[4];

 v = cpu_to_elf32(v);

 memcpy(buf, &v, sizeof(uint32_t));
 return fwrite(buf, 1, 4, f);
}
