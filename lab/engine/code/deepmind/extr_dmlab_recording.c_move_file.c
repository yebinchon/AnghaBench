
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EXDEV ;
 int copy_fp (int *,int *) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int rename (char const*,char const*) ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static bool move_file(const char* src, const char* dest) {
  FILE* src_file;
  FILE* dest_file;

  int rename_code = rename(src, dest);
  if (rename_code == 0) {
    return 1;
  }


  if (errno != EXDEV) {
    return rename_code;
  }


  if (!(src_file = fopen(src, "r"))) {
    return 0;
  }

  if (!(dest_file = fopen(dest, "w"))) {
    fclose(src_file);
    return 0;
  }

  int copy_fp_code = copy_fp(src_file, dest_file);
  fclose(src_file);
  fclose(dest_file);

  if (copy_fp_code == 0) {
    return unlink(src) == 0;
  } else {
    unlink(dest);
    return copy_fp_code == 0;
  }
}
