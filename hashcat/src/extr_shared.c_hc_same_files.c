
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_blocks; scalar_t__ st_blksize; scalar_t__ STAT_NANOSECONDS_ACCESS_TIME; scalar_t__ st_atime; scalar_t__ st_rdev; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_nlink; scalar_t__ st_mode; } ;
typedef int HCFILE ;


 scalar_t__ fstat (int ,struct stat*) ;
 int hc_fclose (int *) ;
 int hc_fileno (int *) ;
 int hc_fopen (int *,char*,char*) ;
 scalar_t__ memcmp (struct stat*,struct stat*,int) ;

bool hc_same_files (char *file1, char *file2)
{
  if ((file1 != ((void*)0)) && (file2 != ((void*)0)))
  {
    struct stat tmpstat_file1;
    struct stat tmpstat_file2;

    int do_check = 0;

    HCFILE fp;

    if (hc_fopen (&fp, file1, "r") == 1)
    {
      if (fstat (hc_fileno (&fp), &tmpstat_file1))
      {
        hc_fclose (&fp);

        return 0;
      }

      hc_fclose (&fp);

      do_check++;
    }

    if (hc_fopen (&fp, file2, "r") == 1)
    {
      if (fstat (hc_fileno (&fp), &tmpstat_file2))
      {
        hc_fclose (&fp);

        return 0;
      }

      hc_fclose (&fp);

      do_check++;
    }

    if (do_check == 2)
    {
      tmpstat_file1.st_mode = 0;
      tmpstat_file1.st_nlink = 0;
      tmpstat_file1.st_uid = 0;
      tmpstat_file1.st_gid = 0;
      tmpstat_file1.st_rdev = 0;
      tmpstat_file1.st_atime = 0;
      tmpstat_file2.st_mode = 0;
      tmpstat_file2.st_nlink = 0;
      tmpstat_file2.st_uid = 0;
      tmpstat_file2.st_gid = 0;
      tmpstat_file2.st_rdev = 0;
      tmpstat_file2.st_atime = 0;
      if (memcmp (&tmpstat_file1, &tmpstat_file2, sizeof (struct stat)) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}
