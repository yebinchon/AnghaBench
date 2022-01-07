
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int dev ;
typedef int FILE ;


 int PATH_MAX ;
 int S_IFBLK ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ malloc (scalar_t__) ;
 int nvram_part_size ;
 int sprintf (char*,char*,int) ;
 scalar_t__ sscanf (char*,char*,int*,int*) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,scalar_t__) ;
 scalar_t__ strstr (char*,char*) ;

char * nvram_find_mtd(void)
{
 FILE *fp;
 int i, part_size;
 char dev[PATH_MAX];
 char *path = ((void*)0);
 struct stat s;

 if ((fp = fopen("/proc/mtd", "r")))
 {
  while( fgets(dev, sizeof(dev), fp) )
  {
   if( strstr(dev, "nvram") && sscanf(dev, "mtd%d: %08x", &i, &part_size) )
   {
    nvram_part_size = part_size;

    sprintf(dev, "/dev/mtdblock%d", i);
    if( stat(dev, &s) > -1 && (s.st_mode & S_IFBLK) )
    {
     if( (path = (char *) malloc(strlen(dev)+1)) != ((void*)0) )
     {
      strncpy(path, dev, strlen(dev)+1);
      break;
     }
    }
   }
  }
  fclose(fp);
 }

 return path;
}
