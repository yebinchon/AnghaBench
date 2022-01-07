
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int READ_BUFF_SIZE ;
 int feof (int *) ;
 int ferror (int *) ;
 size_t fread (int *,int,int,int *) ;
 int fwrite (int *,int,size_t,int *) ;

__attribute__((used)) static size_t copy_file(FILE * to, FILE * from)
{
 size_t i, fsize = 0;
 uint8_t buf[READ_BUFF_SIZE];

 while (!feof(from) && !ferror(from))
 {
  i = fread(buf, sizeof(uint8_t), READ_BUFF_SIZE, from);
  if (i > 0)
  {
   fsize += i;
   fwrite(buf, sizeof(uint8_t), i, to);
  }
 }
 return fsize;
}
