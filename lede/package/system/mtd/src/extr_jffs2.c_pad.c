
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_CUR ;
 scalar_t__ buf ;
 int erasesize ;
 int fprintf (int ,char*,scalar_t__) ;
 int lseek (int ,int,int ) ;
 int memset (scalar_t__,int,int) ;
 scalar_t__ mtd_block_is_bad (int ,scalar_t__) ;
 int mtd_erase_block (int ,scalar_t__) ;
 scalar_t__ mtdofs ;
 scalar_t__ mtdsize ;
 int ofs ;
 int outfd ;
 int quiet ;
 int stderr ;
 int write (int ,scalar_t__,int) ;

__attribute__((used)) static void pad(int size)
{
 if ((ofs % size == 0) && (ofs < erasesize))
  return;

 if (ofs < erasesize) {
  memset(buf + ofs, 0xff, (size - (ofs % size)));
  ofs += (size - (ofs % size));
 }
 ofs = ofs % erasesize;
 if (ofs == 0) {
  while (mtd_block_is_bad(outfd, mtdofs) && (mtdofs < mtdsize)) {
   if (!quiet)
    fprintf(stderr, "\nSkipping bad block at 0x%08x   ", mtdofs);

   mtdofs += erasesize;


   lseek(outfd, erasesize, SEEK_CUR);
  }
  mtd_erase_block(outfd, mtdofs);
  write(outfd, buf, erasesize);
  mtdofs += erasesize;
 }
}
