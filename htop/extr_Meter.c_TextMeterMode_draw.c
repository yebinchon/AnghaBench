
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int caption; } ;
typedef TYPE_1__ Meter ;


 int * CRT_colors ;
 int METER_BUFFER_LEN ;
 size_t METER_TEXT ;
 int Meter_displayBuffer (TYPE_1__*,char*,int *) ;
 int Meter_updateValues (TYPE_1__*,char*,int) ;
 size_t RESET_COLOR ;
 int RichString_begin (int ) ;
 int RichString_end (int ) ;
 int RichString_printVal (int ,int,int) ;
 int attrset (int ) ;
 int mvaddstr (int,int,int ) ;
 int out ;
 int strlen (int ) ;

__attribute__((used)) static void TextMeterMode_draw(Meter* this, int x, int y, int w) {
   char buffer[METER_BUFFER_LEN];
   Meter_updateValues(this, buffer, METER_BUFFER_LEN - 1);
   (void) w;

   attrset(CRT_colors[METER_TEXT]);
   mvaddstr(y, x, this->caption);
   int captionLen = strlen(this->caption);
   x += captionLen;
   attrset(CRT_colors[RESET_COLOR]);
   RichString_begin(out);
   Meter_displayBuffer(this, buffer, &out);
   RichString_printVal(out, y, x);
   RichString_end(out);
}
