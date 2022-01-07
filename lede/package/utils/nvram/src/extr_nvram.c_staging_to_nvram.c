
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 char* NVRAM_STAGING ;
 int O_RDONLY ;
 int O_SYNC ;
 int O_WRONLY ;
 int close (int) ;
 int free (char*) ;
 int fsync (int) ;
 char* nvram_find_mtd () ;
 int nvram_part_size ;
 int open (char*,int) ;
 int read (int,char*,int) ;
 scalar_t__ unlink (char*) ;
 int write (int,char*,int) ;

int staging_to_nvram(void)
{
 int fdmtd, fdstg, stat;
 char *mtd = nvram_find_mtd();
 char buf[nvram_part_size];

 stat = -1;

 if( (mtd != ((void*)0)) && (nvram_part_size > 0) )
 {
  if( (fdstg = open(NVRAM_STAGING, O_RDONLY)) > -1 )
  {
   if( read(fdstg, buf, sizeof(buf)) == sizeof(buf) )
   {
    if( (fdmtd = open(mtd, O_WRONLY | O_SYNC)) > -1 )
    {
     write(fdmtd, buf, sizeof(buf));
     fsync(fdmtd);
     close(fdmtd);
     stat = 0;
    }
   }

   close(fdstg);

   if( !stat )
    stat = unlink(NVRAM_STAGING) ? 1 : 0;
  }
 }

 free(mtd);
 return stat;
}
