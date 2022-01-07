
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Key_KeynumToString (int) ;
 int Q_strncpyz (char*,int ,int) ;

__attribute__((used)) static void Key_KeynumToStringBuf( int keynum, char *buf, int buflen ) {
 Q_strncpyz( buf, Key_KeynumToString( keynum ), buflen );
}
