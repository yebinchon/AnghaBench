
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Key_GetBinding (int) ;
 int Q_strncpyz (char*,char*,int) ;

__attribute__((used)) static void Key_GetBindingBuf( int keynum, char *buf, int buflen ) {
 char *value;

 value = Key_GetBinding( keynum );
 if ( value ) {
  Q_strncpyz( buf, value, buflen );
 }
 else {
  *buf = 0;
 }
}
