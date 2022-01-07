
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int driverinfo_t ;
struct TYPE_9__ {int x; int y; int flags; int id; int callback; int name; void* type; } ;
struct TYPE_14__ {char* string; int width; int height; int focuspic; TYPE_1__ generic; int style; int color; } ;
struct TYPE_13__ {int draw; int fullscreen; } ;
struct TYPE_12__ {char* stringbuff; int numstrings; char** strings; TYPE_6__ menu; TYPE_8__ back; TYPE_8__ framer; TYPE_8__ framel; TYPE_8__ banner; } ;
struct TYPE_10__ {int extensions_string; } ;
struct TYPE_11__ {TYPE_2__ glconfig; } ;


 int DRIVERINFO_BACK0 ;
 int DRIVERINFO_BACK1 ;
 int DRIVERINFO_FRAMEL ;
 int DRIVERINFO_FRAMER ;
 int DriverInfo_Cache () ;
 int DriverInfo_Event ;
 int DriverInfo_MenuDraw ;
 int ID_DRIVERINFOBACK ;
 void* MTYPE_BITMAP ;
 void* MTYPE_BTEXT ;
 int Menu_AddItem (TYPE_6__*,TYPE_8__*) ;
 void* QMF_INACTIVE ;
 int QMF_LEFT_JUSTIFY ;
 int QMF_PULSEIFFOCUS ;
 int Q_strncpyz (char*,int ,int) ;
 int UI_CENTER ;
 int UI_PushMenu (TYPE_6__*) ;
 int color_white ;
 int memset (TYPE_4__*,int ,int) ;
 int qtrue ;
 TYPE_4__ s_driverinfo ;
 int strlen (char*) ;
 TYPE_3__ uis ;

__attribute__((used)) static void UI_DriverInfo_Menu( void )
{
 char* eptr;
 int i;
 int len;


 memset( &s_driverinfo, 0 ,sizeof(driverinfo_t) );

 DriverInfo_Cache();

 s_driverinfo.menu.fullscreen = qtrue;
 s_driverinfo.menu.draw = DriverInfo_MenuDraw;

 s_driverinfo.banner.generic.type = MTYPE_BTEXT;
 s_driverinfo.banner.generic.x = 320;
 s_driverinfo.banner.generic.y = 16;
 s_driverinfo.banner.string = "DRIVER INFO";
 s_driverinfo.banner.color = color_white;
 s_driverinfo.banner.style = UI_CENTER;

 s_driverinfo.framel.generic.type = MTYPE_BITMAP;
 s_driverinfo.framel.generic.name = DRIVERINFO_FRAMEL;
 s_driverinfo.framel.generic.flags = QMF_INACTIVE;
 s_driverinfo.framel.generic.x = 0;
 s_driverinfo.framel.generic.y = 78;
 s_driverinfo.framel.width = 256;
 s_driverinfo.framel.height = 329;

 s_driverinfo.framer.generic.type = MTYPE_BITMAP;
 s_driverinfo.framer.generic.name = DRIVERINFO_FRAMER;
 s_driverinfo.framer.generic.flags = QMF_INACTIVE;
 s_driverinfo.framer.generic.x = 376;
 s_driverinfo.framer.generic.y = 76;
 s_driverinfo.framer.width = 256;
 s_driverinfo.framer.height = 334;

 s_driverinfo.back.generic.type = MTYPE_BITMAP;
 s_driverinfo.back.generic.name = DRIVERINFO_BACK0;
 s_driverinfo.back.generic.flags = QMF_LEFT_JUSTIFY|QMF_PULSEIFFOCUS;
 s_driverinfo.back.generic.callback = DriverInfo_Event;
 s_driverinfo.back.generic.id = ID_DRIVERINFOBACK;
 s_driverinfo.back.generic.x = 0;
 s_driverinfo.back.generic.y = 480-64;
 s_driverinfo.back.width = 128;
 s_driverinfo.back.height = 64;
 s_driverinfo.back.focuspic = DRIVERINFO_BACK1;





  Q_strncpyz(s_driverinfo.stringbuff, uis.glconfig.extensions_string, 1024);


 eptr = s_driverinfo.stringbuff;
 while ( s_driverinfo.numstrings<40 && *eptr )
 {
  while ( *eptr && *eptr == ' ' )
   *eptr++ = '\0';


  if (*eptr && *eptr != ' ')
   s_driverinfo.strings[s_driverinfo.numstrings++] = eptr;

  while ( *eptr && *eptr != ' ' )
   eptr++;
 }


 for (i=0; i<s_driverinfo.numstrings; i++) {
  len = strlen(s_driverinfo.strings[i]);
  if (len > 32) {
   s_driverinfo.strings[i][len-1] = '>';
   s_driverinfo.strings[i][len] = '\0';
  }
 }

 Menu_AddItem( &s_driverinfo.menu, &s_driverinfo.banner );
 Menu_AddItem( &s_driverinfo.menu, &s_driverinfo.framel );
 Menu_AddItem( &s_driverinfo.menu, &s_driverinfo.framer );
 Menu_AddItem( &s_driverinfo.menu, &s_driverinfo.back );

 UI_PushMenu( &s_driverinfo.menu );
}
