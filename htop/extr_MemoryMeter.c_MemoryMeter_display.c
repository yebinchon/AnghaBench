
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * values; int total; } ;
typedef int RichString ;
typedef int Object ;
typedef TYPE_1__ Meter ;


 int * CRT_colors ;
 size_t MEMORY_BUFFERS_TEXT ;
 size_t MEMORY_CACHE ;
 size_t MEMORY_USED ;
 size_t METER_TEXT ;
 size_t METER_VALUE ;
 int Meter_humanUnit (char*,int ,int) ;
 int RichString_append (int *,int ,char*) ;
 int RichString_write (int *,int ,char*) ;

__attribute__((used)) static void MemoryMeter_display(Object* cast, RichString* out) {
   char buffer[50];
   Meter* this = (Meter*)cast;
   RichString_write(out, CRT_colors[METER_TEXT], ":");
   Meter_humanUnit(buffer, this->total, 50);
   RichString_append(out, CRT_colors[METER_VALUE], buffer);
   Meter_humanUnit(buffer, this->values[0], 50);
   RichString_append(out, CRT_colors[METER_TEXT], " used:");
   RichString_append(out, CRT_colors[MEMORY_USED], buffer);
   Meter_humanUnit(buffer, this->values[1], 50);
   RichString_append(out, CRT_colors[METER_TEXT], " buffers:");
   RichString_append(out, CRT_colors[MEMORY_BUFFERS_TEXT], buffer);
   Meter_humanUnit(buffer, this->values[2], 50);
   RichString_append(out, CRT_colors[METER_TEXT], " cache:");
   RichString_append(out, CRT_colors[MEMORY_CACHE], buffer);
}
