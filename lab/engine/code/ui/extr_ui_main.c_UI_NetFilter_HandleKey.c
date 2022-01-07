
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int UI_BuildServerDisplayList (int ) ;
 int UI_SelectForKey (int) ;
 scalar_t__ numServerFilters ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ ui_serverFilterType ;

__attribute__((used)) static qboolean UI_NetFilter_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  ui_serverFilterType.integer += select;

  if (ui_serverFilterType.integer >= numServerFilters) {
   ui_serverFilterType.integer = 0;
  } else if (ui_serverFilterType.integer < 0) {
   ui_serverFilterType.integer = numServerFilters - 1;
  }
  UI_BuildServerDisplayList(qtrue);
  return qtrue;
 }
 return qfalse;
}
