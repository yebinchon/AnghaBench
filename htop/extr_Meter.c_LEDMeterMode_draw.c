
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int caption; } ;
typedef TYPE_1__ Meter ;


 int * CRT_colors ;
 scalar_t__ CRT_utf8 ;
 int LEDMeterMode_digits ;
 int LEDMeterMode_digitsAscii ;
 int LEDMeterMode_digitsUtf8 ;
 int LEDMeterMode_drawDigit (int,int,char) ;
 size_t LED_COLOR ;
 int METER_BUFFER_LEN ;
 int Meter_displayBuffer (TYPE_1__*,char*,int *) ;
 int Meter_updateValues (TYPE_1__*,char*,int) ;
 size_t RESET_COLOR ;
 int RichString_begin (int ) ;
 int RichString_end (int ) ;
 char RichString_getCharVal (int ,int) ;
 int RichString_sizeVal (int ) ;
 int attrset (int ) ;
 int mvaddch (int,int,char) ;
 int mvaddstr (int,int,int ) ;
 int out ;
 int strlen (int ) ;

__attribute__((used)) static void LEDMeterMode_draw(Meter* this, int x, int y, int w) {
   (void) w;






      LEDMeterMode_digits = LEDMeterMode_digitsAscii;

   char buffer[METER_BUFFER_LEN];
   Meter_updateValues(this, buffer, METER_BUFFER_LEN - 1);

   RichString_begin(out);
   Meter_displayBuffer(this, buffer, &out);

   int yText =



      y+2;
   attrset(CRT_colors[LED_COLOR]);
   mvaddstr(yText, x, this->caption);
   int xx = x + strlen(this->caption);
   int len = RichString_sizeVal(out);
   for (int i = 0; i < len; i++) {
      char c = RichString_getCharVal(out, i);
      if (c >= '0' && c <= '9') {
         LEDMeterMode_drawDigit(xx, y, c-48);
         xx += 4;
      } else {
         mvaddch(yText, xx, c);
         xx += 1;
      }
   }
   attrset(CRT_colors[RESET_COLOR]);
   RichString_end(out);
}
