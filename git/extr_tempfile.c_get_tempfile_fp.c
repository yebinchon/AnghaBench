
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int * fp; } ;
typedef int FILE ;


 int BUG (char*) ;
 int is_tempfile_active (struct tempfile*) ;

FILE *get_tempfile_fp(struct tempfile *tempfile)
{
 if (!is_tempfile_active(tempfile))
  BUG("get_tempfile_fp() called for inactive object");
 return tempfile->fp;
}
