
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* comm; int basenameOffset; TYPE_1__* settings; } ;
struct TYPE_4__ {scalar_t__ highlightBaseName; scalar_t__ showProgramPath; } ;
typedef int RichString ;
typedef TYPE_2__ Process ;


 int RichString_append (int *,int,char*) ;
 int RichString_setAttrn (int *,int,int,int) ;
 int RichString_size (int *) ;

__attribute__((used)) static inline void Process_writeCommand(Process* this, int attr, int baseattr, RichString* str) {
   int start = RichString_size(str), finish = 0;
   char* comm = this->comm;

   if (this->settings->highlightBaseName || !this->settings->showProgramPath) {
      int i, basename = 0;
      for (i = 0; i < this->basenameOffset; i++) {
         if (comm[i] == '/') {
            basename = i + 1;
         } else if (comm[i] == ':') {
            finish = i + 1;
            break;
         }
      }
      if (!finish) {
         if (this->settings->showProgramPath)
            start += basename;
         else
            comm += basename;
         finish = this->basenameOffset - basename;
      }
      finish += start - 1;
   }

   RichString_append(str, attr, comm);

   if (this->settings->highlightBaseName)
      RichString_setAttrn(str, baseattr, start, finish);
}
