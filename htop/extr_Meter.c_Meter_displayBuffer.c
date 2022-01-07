
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RichString ;
typedef int Meter ;


 int * CRT_colors ;
 size_t* Meter_attributes (int *) ;
 int Object_display (int *,int *) ;
 scalar_t__ Object_displayFn (int *) ;
 int RichString_write (int *,int ,char*) ;

__attribute__((used)) static inline void Meter_displayBuffer(Meter* this, char* buffer, RichString* out) {
   if (Object_displayFn(this)) {
      Object_display(this, out);
   } else {
      RichString_write(out, CRT_colors[Meter_attributes(this)[0]], buffer);
   }
}
