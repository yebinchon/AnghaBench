
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parm2 ;
typedef int parm1 ;


 scalar_t__ CG_ConfigString (int ) ;
 int COM_Parse (char**) ;
 int CS_MUSIC ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,int ,int) ;
 int trap_S_StartBackgroundTrack (char*,char*) ;

void CG_StartMusic( void ) {
 char *s;
 char parm1[MAX_QPATH], parm2[MAX_QPATH];


 s = (char *)CG_ConfigString( CS_MUSIC );
 Q_strncpyz( parm1, COM_Parse( &s ), sizeof( parm1 ) );
 Q_strncpyz( parm2, COM_Parse( &s ), sizeof( parm2 ) );

 trap_S_StartBackgroundTrack( parm1, parm2 );
}
