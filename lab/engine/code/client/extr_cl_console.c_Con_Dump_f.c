
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int filename ;
typedef int fileHandle_t ;
struct TYPE_2__ {int current; int totallines; short* text; int linewidth; } ;


 int COM_CompareExtension (char*,char*) ;
 int COM_DefaultExtension (char*,int,char*) ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int FS_FCloseFile (int ) ;
 int FS_FOpenFileWrite (char*) ;
 int FS_Write (char*,int ,int ) ;
 char* Hunk_AllocateTempMemory (int) ;
 int Hunk_FreeTempMemory (char*) ;
 int MAX_QPATH ;
 int Q_strcat (char*,int,char*) ;
 int Q_strncpyz (char*,int ,int) ;
 TYPE_1__ con ;
 int strlen (char*) ;

void Con_Dump_f (void)
{
 int l, x, i;
 short *line;
 fileHandle_t f;
 int bufferlen;
 char *buffer;
 char filename[MAX_QPATH];

 if (Cmd_Argc() != 2)
 {
  Com_Printf ("usage: condump <filename>\n");
  return;
 }

 Q_strncpyz( filename, Cmd_Argv( 1 ), sizeof( filename ) );
 COM_DefaultExtension( filename, sizeof( filename ), ".txt" );

 if (!COM_CompareExtension(filename, ".txt"))
 {
  Com_Printf("Con_Dump_f: Only the \".txt\" extension is supported by this command!\n");
  return;
 }

 f = FS_FOpenFileWrite( filename );
 if (!f)
 {
  Com_Printf ("ERROR: couldn't open %s.\n", filename);
  return;
 }

 Com_Printf ("Dumped console text to %s.\n", filename );


 for (l = con.current - con.totallines + 1 ; l <= con.current ; l++)
 {
  line = con.text + (l%con.totallines)*con.linewidth;
  for (x=0 ; x<con.linewidth ; x++)
   if ((line[x] & 0xff) != ' ')
    break;
  if (x != con.linewidth)
   break;
 }




 bufferlen = con.linewidth + 2 * sizeof ( char );


 buffer = Hunk_AllocateTempMemory( bufferlen );


 buffer[bufferlen-1] = 0;
 for ( ; l <= con.current ; l++)
 {
  line = con.text + (l%con.totallines)*con.linewidth;
  for(i=0; i<con.linewidth; i++)
   buffer[i] = line[i] & 0xff;
  for (x=con.linewidth-1 ; x>=0 ; x--)
  {
   if (buffer[x] == ' ')
    buffer[x] = 0;
   else
    break;
  }



  Q_strcat(buffer, bufferlen, "\n");

  FS_Write(buffer, strlen(buffer), f);
 }

 Hunk_FreeTempMemory( buffer );
 FS_FCloseFile( f );
}
