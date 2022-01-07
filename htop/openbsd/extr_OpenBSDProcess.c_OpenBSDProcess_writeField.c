
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RichString ;
typedef int ProcessField ;
typedef int Process ;


 int* CRT_colors ;
 size_t DEFAULT_COLOR ;
 int Process_writeField (int *,int *,int) ;
 int RichString_append (int *,int,char*) ;

void OpenBSDProcess_writeField(Process* this, RichString* str, ProcessField field) {

   char buffer[256]; buffer[255] = '\0';
   int attr = CRT_colors[DEFAULT_COLOR];

   switch (field) {

   default:
      Process_writeField(this, str, field);
      return;
   }
   RichString_append(str, attr, buffer);
}
