
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int redBlue; } ;


 int UI_SelectForKey (int) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static qboolean UI_RedBlue_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  uiInfo.redBlue ^= 1;
  return qtrue;
 }
 return qfalse;
}
