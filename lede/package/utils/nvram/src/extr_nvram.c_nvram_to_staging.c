
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int NVRAM_STAGING ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int close (int) ;
 int free (char*) ;
 int fsync (int) ;
 char* nvram_find_mtd () ;
 int nvram_part_size ;
 int open (char*,int,...) ;
 int read (int,char*,int) ;
 int write (int,char*,int) ;

int nvram_to_staging(void)
{
 int fdmtd, fdstg, stat;
 char *mtd = nvram_find_mtd();
 char buf[nvram_part_size];

 stat = -1;

 if( (mtd != ((void*)0)) && (nvram_part_size > 0) )
 {
  if( (fdmtd = open(mtd, O_RDONLY)) > -1 )
  {
   if( read(fdmtd, buf, sizeof(buf)) == sizeof(buf) )
   {
    if((fdstg = open(NVRAM_STAGING, O_WRONLY | O_CREAT, 0600)) > -1)
    {
     write(fdstg, buf, sizeof(buf));
     fsync(fdstg);
     close(fdstg);

     stat = 0;
    }
   }

   close(fdmtd);
  }
 }

 free(mtd);
 return stat;
}
