
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int file_name; } ;
typedef int FILE ;


 int ERRS (char*,int ) ;
 TYPE_1__* bootext_block ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (int *,int,int,int *) ;

int
read_magic(uint16_t *magic)
{
 FILE *f;
 int res;

 errno = 0;
 f = fopen(bootext_block->file_name,"r");
 if (errno) {
  ERRS("unable to open file: %s", bootext_block->file_name);
  return -1;
 }

 errno = 0;
 fread(magic, 2, 1, f);
 if (errno != 0) {
  ERRS("unable to read from file: %s", bootext_block->file_name);
  res = -1;
  goto err;
 }

 res = 0;

err:
 fclose(f);
 return res;
}
