
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int filename ;


 int COM_DefaultExtension (char*,int,char*) ;
 int Cbuf_InsertText (char*) ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,char*,...) ;
 int FS_FreeFile (void*) ;
 int FS_ReadFile (char*,void**) ;
 int MAX_QPATH ;
 int Q_stricmp (int ,char*) ;
 int Q_strncpyz (char*,int ,int) ;

void Cmd_Exec_f( void ) {
 qboolean quiet;
 union {
  char *c;
  void *v;
 } f;
 char filename[MAX_QPATH];

 quiet = !Q_stricmp(Cmd_Argv(0), "execq");

 if (Cmd_Argc () != 2) {
  Com_Printf ("exec%s <filename> : execute a script file%s\n",
              quiet ? "q" : "", quiet ? " without notification" : "");
  return;
 }

 Q_strncpyz( filename, Cmd_Argv(1), sizeof( filename ) );
 COM_DefaultExtension( filename, sizeof( filename ), ".cfg" );
 FS_ReadFile( filename, &f.v);
 if (!f.c) {
  Com_Printf ("couldn't exec %s\n", filename);
  return;
 }
 if (!quiet)
  Com_Printf ("execing %s\n", filename);

 Cbuf_InsertText (f.c);

 FS_FreeFile (f.v);
}
