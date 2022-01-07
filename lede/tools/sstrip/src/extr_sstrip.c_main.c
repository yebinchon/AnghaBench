
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf64_Phdr ;
typedef int Elf64_Ehdr ;
typedef int Elf32_Phdr ;
typedef int Elf32_Ehdr ;




 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_RDWR ;
 int close (int) ;
 int commitchanges32 (int,int *,int *,unsigned long) ;
 int commitchanges64 (int,int *,int *,unsigned long) ;
 int ferr (char*) ;
 char* filename ;
 int getmemorysize32 (int *,int *,unsigned long*) ;
 int getmemorysize64 (int *,int *,unsigned long*) ;
 int modifyheaders32 (int *,int *,unsigned long) ;
 int modifyheaders64 (int *,int *,unsigned long) ;
 int open (char*,int ) ;
 int printf (char*) ;
 char* progname ;
 int readelfheader32 (int,int *) ;
 int readelfheader64 (int,int *) ;
 int readelfheaderident (int,int *) ;
 int readphdrtable32 (int,int *,int **) ;
 int readphdrtable64 (int,int *,int **) ;
 int truncatezeros (int,unsigned long*) ;

int main(int argc, char *argv[])
{
 int fd;
 union {
  Elf32_Ehdr ehdr32;
  Elf64_Ehdr ehdr64;
 } e;
 union {
  Elf32_Phdr *phdrs32;
  Elf64_Phdr *phdrs64;
 } p;
 unsigned long newsize;
 char **arg;
 int failures = 0;

 if (argc < 2 || argv[1][0] == '-') {
  printf("Usage: sstrip FILE...\n"
      "sstrip discards all nonessential bytes from an executable.\n\n"
      "Version 2.0-X Copyright (C) 2000,2001 Brian Raiter.\n"
      "Cross-devel hacks Copyright (C) 2004 Manuel Novoa III.\n"
      "This program is free software, licensed under the GNU\n"
      "General Public License. There is absolutely no warranty.\n");
  return EXIT_SUCCESS;
 }

 progname = argv[0];

 for (arg = argv + 1 ; *arg != ((void*)0) ; ++arg) {
  filename = *arg;

  fd = open(*arg, O_RDWR);
  if (fd < 0) {
   ferr("can't open");
   ++failures;
   continue;
  }

  switch (readelfheaderident(fd, &e.ehdr32)) {
   case 129:
    if (!(readelfheader32(fd, &e.ehdr32) &&
       readphdrtable32(fd, &e.ehdr32, &p.phdrs32) &&
       getmemorysize32(&e.ehdr32, p.phdrs32, &newsize) &&
       truncatezeros(fd, &newsize) &&
       modifyheaders32(&e.ehdr32, p.phdrs32, newsize) &&
       commitchanges32(fd, &e.ehdr32, p.phdrs32, newsize)))
     ++failures;
    break;
   case 128:
    if (!(readelfheader64(fd, &e.ehdr64) &&
       readphdrtable64(fd, &e.ehdr64, &p.phdrs64) &&
       getmemorysize64(&e.ehdr64, p.phdrs64, &newsize) &&
       truncatezeros(fd, &newsize) &&
       modifyheaders64(&e.ehdr64, p.phdrs64, newsize) &&
       commitchanges64(fd, &e.ehdr64, p.phdrs64, newsize)))
     ++failures;
    break;
   default:
    ++failures;
    break;
  }
  close(fd);
 }

 return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
