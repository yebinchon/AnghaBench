
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_6__ {int ** columns; } ;
struct TYPE_5__ {scalar_t__ param; } ;
typedef TYPE_1__ Meter ;
typedef TYPE_2__ Header ;


 int Meter_name (TYPE_1__*) ;
 scalar_t__ Vector_get (int *,int) ;
 int strlen (int ) ;
 int strncpy (char*,int ,int) ;
 char* xMalloc (int) ;
 int xSnprintf (char*,int,char*,scalar_t__) ;

char* Header_readMeterName(Header* this, int i, int column) {
   Vector* meters = this->columns[column];
   Meter* meter = (Meter*) Vector_get(meters, i);

   int nameLen = strlen(Meter_name(meter));
   int len = nameLen + 100;
   char* name = xMalloc(len);
   strncpy(name, Meter_name(meter), nameLen);
   name[nameLen] = '\0';
   if (meter->param)
      xSnprintf(name + nameLen, len - nameLen, "(%d)", meter->param);

   return name;
}
