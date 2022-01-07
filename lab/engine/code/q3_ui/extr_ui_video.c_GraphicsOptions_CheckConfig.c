
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_22__ {int curvalue; } ;
struct TYPE_21__ {scalar_t__ curvalue; } ;
struct TYPE_20__ {scalar_t__ curvalue; } ;
struct TYPE_19__ {scalar_t__ curvalue; } ;
struct TYPE_18__ {scalar_t__ curvalue; } ;
struct TYPE_17__ {scalar_t__ curvalue; } ;
struct TYPE_16__ {scalar_t__ curvalue; } ;
struct TYPE_15__ {scalar_t__ curvalue; } ;
struct TYPE_14__ {scalar_t__ curvalue; } ;
struct TYPE_13__ {TYPE_9__ list; TYPE_8__ filter; TYPE_7__ geometry; TYPE_6__ lighting; TYPE_5__ tq; TYPE_4__ fs; TYPE_3__ mode; TYPE_2__ driver; TYPE_1__ colordepth; } ;
struct TYPE_12__ {scalar_t__ colordepth; scalar_t__ driver; scalar_t__ fullscreen; scalar_t__ tq; scalar_t__ lighting; scalar_t__ geometry; scalar_t__ filter; int mode; } ;


 scalar_t__ GraphicsOptions_FindDetectedResolution (int ) ;
 int NUM_IVO_TEMPLATES ;
 TYPE_11__ s_graphicsoptions ;
 TYPE_10__* s_ivo_templates ;

__attribute__((used)) static void GraphicsOptions_CheckConfig( void )
{
 int i;

 for ( i = 0; i < NUM_IVO_TEMPLATES-1; i++ )
 {
  if ( s_ivo_templates[i].colordepth != s_graphicsoptions.colordepth.curvalue )
   continue;
  if ( s_ivo_templates[i].driver != s_graphicsoptions.driver.curvalue )
   continue;
  if ( GraphicsOptions_FindDetectedResolution(s_ivo_templates[i].mode) != s_graphicsoptions.mode.curvalue )
   continue;
  if ( s_ivo_templates[i].fullscreen != s_graphicsoptions.fs.curvalue )
   continue;
  if ( s_ivo_templates[i].tq != s_graphicsoptions.tq.curvalue )
   continue;
  if ( s_ivo_templates[i].lighting != s_graphicsoptions.lighting.curvalue )
   continue;
  if ( s_ivo_templates[i].geometry != s_graphicsoptions.geometry.curvalue )
   continue;
  if ( s_ivo_templates[i].filter != s_graphicsoptions.filter.curvalue )
   continue;


  s_graphicsoptions.list.curvalue = i;
  return;
 }


 s_graphicsoptions.list.curvalue = NUM_IVO_TEMPLATES - 1;
}
