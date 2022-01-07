
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;


 int Cbuf_AddText (char*) ;
 int Cbuf_Execute () ;
 int Com_DPrintf (char*,char*) ;
 int Cvar_Set (char*,char*) ;
 int Cvar_VariableString (char*) ;
 int MAX_STRING_CHARS ;
 int Q_strncpyz (char*,int ,int) ;

void CL_NextDemo( void ) {
 char v[MAX_STRING_CHARS];

 Q_strncpyz( v, Cvar_VariableString ("nextdemo"), sizeof(v) );
 v[MAX_STRING_CHARS-1] = 0;
 Com_DPrintf("CL_NextDemo: %s\n", v );
 if (!v[0]) {
  return;
 }

 Cvar_Set ("nextdemo","");
 Cbuf_AddText (v);
 Cbuf_AddText ("\n");
 Cbuf_Execute();
}
