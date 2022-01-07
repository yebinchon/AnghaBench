
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cvar_InfoString (int) ;
 int Q_strncpyz (char*,int ,int) ;

void Cvar_InfoStringBuffer( int bit, char* buff, int buffsize ) {
 Q_strncpyz(buff,Cvar_InfoString(bit),buffsize);
}
