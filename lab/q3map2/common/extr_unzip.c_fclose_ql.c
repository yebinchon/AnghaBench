
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int xor_max_pos ;
 int ** xored_open_files ;

int fclose_ql (FILE* stream) {
    int ret;
 int i;



 for (i = 0; i <= xor_max_pos; i++) {
  if (xored_open_files[i] == stream) {
   xored_open_files[i] = ((void*)0);
   if (i == xor_max_pos) {
    xor_max_pos--;
   }

   break;
  }
 }


    ret = fclose((FILE *)stream);
    return ret;
}
