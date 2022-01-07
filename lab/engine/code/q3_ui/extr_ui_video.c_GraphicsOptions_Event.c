
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_18__ {int id; } ;
typedef TYPE_12__ menucommon_s ;
struct TYPE_29__ {int curvalue; } ;
struct TYPE_28__ {int curvalue; } ;
struct TYPE_27__ {int curvalue; } ;
struct TYPE_26__ {int curvalue; } ;
struct TYPE_25__ {int curvalue; } ;
struct TYPE_24__ {int curvalue; } ;
struct TYPE_23__ {size_t curvalue; } ;
struct TYPE_22__ {size_t curvalue; } ;
struct TYPE_21__ {int curvalue; } ;
struct TYPE_17__ {int curvalue; } ;
struct TYPE_16__ {int curvalue; } ;
struct TYPE_20__ {TYPE_11__ fs; TYPE_10__ filter; TYPE_9__ geometry; TYPE_8__ texturebits; TYPE_7__ colordepth; TYPE_6__ lighting; TYPE_5__ tq; TYPE_4__ mode; TYPE_3__ ratio; TYPE_2__ list; TYPE_1__ driver; } ;
struct TYPE_19__ {int fullscreen; int filter; int geometry; int texturebits; int colordepth; int lighting; int tq; int mode; } ;
typedef TYPE_13__ InitialVideoOptions_s ;


 size_t GraphicsOptions_FindDetectedResolution (int ) ;
 int QM_ACTIVATED ;
 int UI_DisplayOptionsMenu () ;
 int UI_DriverInfo_Menu () ;
 int UI_NetworkOptionsMenu () ;
 int UI_PopMenu () ;
 int UI_SoundOptionsMenu () ;
 int* ratioToRes ;
 void** resToRatio ;
 TYPE_15__ s_graphicsoptions ;
 TYPE_13__* s_ivo_templates ;

__attribute__((used)) static void GraphicsOptions_Event( void* ptr, int event ) {
 InitialVideoOptions_s *ivo;

 if( event != QM_ACTIVATED ) {
   return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 129:
  s_graphicsoptions.mode.curvalue =
   ratioToRes[ s_graphicsoptions.ratio.curvalue ];


 case 131:

  if ( s_graphicsoptions.driver.curvalue == 1 )
  {
   if ( s_graphicsoptions.mode.curvalue < 2 )
    s_graphicsoptions.mode.curvalue = 2;
   else if ( s_graphicsoptions.mode.curvalue > 6 )
    s_graphicsoptions.mode.curvalue = 6;
  }
  s_graphicsoptions.ratio.curvalue =
   resToRatio[ s_graphicsoptions.mode.curvalue ];
  break;

 case 132:
  ivo = &s_ivo_templates[s_graphicsoptions.list.curvalue];

  s_graphicsoptions.mode.curvalue = GraphicsOptions_FindDetectedResolution(ivo->mode);
  s_graphicsoptions.ratio.curvalue =
   resToRatio[ s_graphicsoptions.mode.curvalue ];
  s_graphicsoptions.tq.curvalue = ivo->tq;
  s_graphicsoptions.lighting.curvalue = ivo->lighting;
  s_graphicsoptions.colordepth.curvalue = ivo->colordepth;
  s_graphicsoptions.texturebits.curvalue = ivo->texturebits;
  s_graphicsoptions.geometry.curvalue = ivo->geometry;
  s_graphicsoptions.filter.curvalue = ivo->filter;
  s_graphicsoptions.fs.curvalue = ivo->fullscreen;
  break;

 case 134:
  UI_DriverInfo_Menu();
  break;

 case 136:
  UI_PopMenu();
  break;

 case 133:
  break;

 case 135:
  UI_PopMenu();
  UI_DisplayOptionsMenu();
  break;

 case 128:
  UI_PopMenu();
  UI_SoundOptionsMenu();
  break;

 case 130:
  UI_PopMenu();
  UI_NetworkOptionsMenu();
  break;
 }
}
