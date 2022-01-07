
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* chptr; } ;
typedef TYPE_1__ RichString ;


 int RichString_setLen (TYPE_1__*,int) ;

__attribute__((used)) static inline void RichString_writeFrom(RichString* this, int attrs, const char* data_c, int from, int len) {
   int newLen = from + len;
   RichString_setLen(this, newLen);
   for (int i = from, j = 0; i < newLen; i++, j++)
      this->chptr[i] = (data_c[j] >= 32 ? data_c[j] : '?') | attrs;
   this->chptr[newLen] = 0;
}
