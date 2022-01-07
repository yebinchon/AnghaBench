
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ chlen; int chstr; int chptr; } ;
typedef TYPE_1__ RichString ;


 scalar_t__ RICHSTRING_MAXLEN ;
 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void RichString_prune(RichString* this) {
   if (this->chlen > RICHSTRING_MAXLEN)
      free(this->chptr);
   memset(this, 0, sizeof(RichString));
   this->chptr = this->chstr;
}
