
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int fwrite (unsigned char*,int,int,int *) ;
 int put_unaligned_le32 (int ,unsigned char*) ;

__attribute__((used)) static int write32(uint32_t v, FILE *f)
{
 unsigned char buf[4];

 put_unaligned_le32(v, buf);
 return fwrite(buf, 1, 4, f) == 4 ? 0 : -1;
}
