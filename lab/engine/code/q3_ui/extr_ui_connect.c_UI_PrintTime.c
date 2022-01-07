
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_sprintf (char*,int,char*,int,...) ;

__attribute__((used)) static void UI_PrintTime ( char *buf, int bufsize, int time ) {
 time /= 1000;

 if (time > 3600) {
  Com_sprintf( buf, bufsize, "%d hr %d min", time / 3600, (time % 3600) / 60 );
 } else if (time > 60) {
  Com_sprintf( buf, bufsize, "%d min %d sec", time / 60, time % 60 );
 } else {
  Com_sprintf( buf, bufsize, "%d sec", time );
 }
}
