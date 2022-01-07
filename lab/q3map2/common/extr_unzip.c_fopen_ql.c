
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAX_FILE_HANDLES ;
 int SEEK_SET ;
 int * fopen (char const*,char const*) ;
 int fread (char*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int printf (char*,int *) ;
 int xor_max_pos ;
 int ** xored_open_files ;

FILE* fopen_ql (const char* filename, const char* mode) {
    FILE* file = ((void*)0);

    if ((filename!=((void*)0)) && (mode != ((void*)0)))
        file = fopen(filename, mode);

 if (file) {
  int i;
  char magic[4];
  int useXor = 1;


  fread(magic, 1, 4, file);
  if (magic[0] == 'P' && magic[1] == 'K' && magic[2] == '\x03') {
   useXor = 0;
  }
  fseek(file, 0, SEEK_SET);
  if (!useXor) {

   return file;
  }
  for (i = 0; i < MAX_FILE_HANDLES; i++) {


   if (xored_open_files[i] == ((void*)0)) {
    xored_open_files[i] = file;

    if (i > xor_max_pos) {
     xor_max_pos = i;
    }
    return file;
    break;
   }
  }
  printf("error couldn't find a spot for %p\n", file);
  return ((void*)0);
 }

    return file;
}
