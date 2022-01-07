
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Info_ValueForKey (char*,char*) ;
 char* UI_GetBotInfoByNumber (int) ;

char *UI_GetBotNameByNumber( int num ) {
 char *info = UI_GetBotInfoByNumber(num);
 if (info) {
  return Info_ValueForKey( info, "name" );
 }
 return "Sarge";
}
