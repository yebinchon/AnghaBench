
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_sprintf (char*,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void UI_ReadableSize ( char *buf, int bufsize, int value )
{
 if (value > 1024*1024*1024 ) {
  Com_sprintf( buf, bufsize, "%d", value / (1024*1024*1024) );
  Com_sprintf( buf+strlen(buf), bufsize-strlen(buf), ".%02d GB",
   (value % (1024*1024*1024))*100 / (1024*1024*1024) );
 } else if (value > 1024*1024 ) {
  Com_sprintf( buf, bufsize, "%d", value / (1024*1024) );
  Com_sprintf( buf+strlen(buf), bufsize-strlen(buf), ".%02d MB",
   (value % (1024*1024))*100 / (1024*1024) );
 } else if (value > 1024 ) {
  Com_sprintf( buf, bufsize, "%d KB", value / 1024 );
 } else {
  Com_sprintf( buf, bufsize, "%d bytes", value );
 }
}
