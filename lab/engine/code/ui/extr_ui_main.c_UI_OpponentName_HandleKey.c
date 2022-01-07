
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_NextOpponent () ;
 int UI_PriorOpponent () ;
 int UI_SelectForKey (int) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean UI_OpponentName_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  if (select < 0) {
   UI_PriorOpponent();
  } else {
   UI_NextOpponent();
  }
  return qtrue;
 }
 return qfalse;
}
