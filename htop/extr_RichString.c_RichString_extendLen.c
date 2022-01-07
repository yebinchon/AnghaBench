
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chlen; int chptr; int chstr; } ;
typedef TYPE_1__ RichString ;


 int RICHSTRING_MAXLEN ;
 int RichString_setChar (TYPE_1__*,int,int ) ;
 int charBytes (int) ;
 int free (int ) ;
 int memcpy (int ,int ,int ) ;
 int xMalloc (int ) ;
 int xRealloc (int ,int ) ;

__attribute__((used)) static void RichString_extendLen(RichString* this, int len) {
   if (this->chlen <= RICHSTRING_MAXLEN) {
      if (len > RICHSTRING_MAXLEN) {
         this->chptr = xMalloc(charBytes(len + 1));
         memcpy(this->chptr, this->chstr, charBytes(this->chlen));
      }
   } else {
      if (len <= RICHSTRING_MAXLEN) {
         memcpy(this->chstr, this->chptr, charBytes(len));
         free(this->chptr);
         this->chptr = this->chstr;
      } else {
         this->chptr = xRealloc(this->chptr, charBytes(len + 1));
      }
   }

   RichString_setChar(this, len, 0);
   this->chlen = len;
}
