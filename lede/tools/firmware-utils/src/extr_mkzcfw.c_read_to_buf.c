
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int file_name; int file_size; } ;
typedef int FILE ;


 int ERRS (char*,int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (char*,int ,int,int *) ;

__attribute__((used)) static int read_to_buf(struct file_info *fdata, char *buf)
{
 FILE *f;
 int ret = EXIT_FAILURE;

 f = fopen(fdata->file_name, "r");
 if (f == ((void*)0)) {
  ERRS("could not open \"%s\" for reading", fdata->file_name);
  goto out;
 }

 errno = 0;
 fread(buf, fdata->file_size, 1, f);
 if (errno != 0) {
  ERRS("unable to read from file \"%s\"", fdata->file_name);
  goto out_close;
 }

 ret = EXIT_SUCCESS;

 out_close:
 fclose(f);
 out:
 return ret;
}
