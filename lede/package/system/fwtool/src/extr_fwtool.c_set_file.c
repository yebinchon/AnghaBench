
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MODE_EXTRACT ;
 int file_mode ;
 int msg (char*) ;
 int * open_file (char const*,int) ;

__attribute__((used)) static int
set_file(FILE **file, const char *name, int mode)
{
 if (file_mode < 0)
  file_mode = mode;
 else if (file_mode != mode) {
  msg("Error: mixing appending and extracting data is not supported\n");
  return 1;
 }

 if (*file) {
  msg("Error: the same append/extract option cannot be used multiple times\n");
  return 1;
 }

 *file = open_file(name, mode == MODE_EXTRACT);
 return !*file;
}
