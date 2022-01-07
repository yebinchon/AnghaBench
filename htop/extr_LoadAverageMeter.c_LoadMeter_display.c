
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_2__ {int * values; } ;
typedef int RichString ;
typedef int Object ;
typedef TYPE_1__ Meter ;


 int * CRT_colors ;
 size_t LOAD ;
 int RichString_write (int *,int ,char*) ;
 int xSnprintf (char*,int,char*,int ) ;

__attribute__((used)) static void LoadMeter_display(Object* cast, RichString* out) {
   Meter* this = (Meter*)cast;
   char buffer[20];
   xSnprintf(buffer, sizeof(buffer), "%.2f ", ((Meter*)this)->values[0]);
   RichString_write(out, CRT_colors[LOAD], buffer);
}
