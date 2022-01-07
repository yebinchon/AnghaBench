
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISP_LINE_LEN ;
 int printf (char*,...) ;
 int read_dataflash (unsigned int,unsigned long,char*) ;

__attribute__((used)) static int AT91F_MemoryDisplay(unsigned int addr, unsigned int length)
{
 unsigned long i, nbytes, linebytes;
 char *cp;


 unsigned char *ucp;
 char linebuf[DISP_LINE_LEN];


 nbytes = length;
    do
    {


  ucp = (unsigned char *)linebuf;

  printf("%08x:", addr);
  linebytes = (nbytes > DISP_LINE_LEN)?DISP_LINE_LEN:nbytes;
                if((addr & 0xF0000000) == 0x20000000) {
   for(i = 0; i < linebytes; i ++) {
    linebuf[i] = *(char *)(addr+i);
   }
  } else {
   read_dataflash(addr, linebytes, linebuf);
  }
  for (i=0; i<linebytes; i++)
  {






    printf(" %02x", *ucp++);

   addr++;
  }
  printf("    ");
  cp = linebuf;
  for (i=0; i<linebytes; i++) {
   if ((*cp < 0x20) || (*cp > 0x7e))
    printf(".");
   else
    printf("%c", *cp);
   cp++;
  }
  printf("\n");
  nbytes -= linebytes;
 } while (nbytes > 0);
 return 0;
}
