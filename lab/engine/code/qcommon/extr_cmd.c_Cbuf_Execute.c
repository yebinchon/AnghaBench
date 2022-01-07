
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {int cursize; scalar_t__ data; } ;


 int Cmd_ExecuteString (char*) ;
 int Com_Memcpy (char*,char*,int) ;
 int MAX_CMD_LINE ;
 TYPE_1__ cmd_text ;
 scalar_t__ cmd_wait ;
 int memmove (char*,char*,int) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

void Cbuf_Execute (void)
{
 int i;
 char *text;
 char line[MAX_CMD_LINE];
 int quotes;




 qboolean in_star_comment = qfalse;
 qboolean in_slash_comment = qfalse;
 while (cmd_text.cursize)
 {
  if ( cmd_wait > 0 ) {


   cmd_wait--;
   break;
  }


  text = (char *)cmd_text.data;

  quotes = 0;
  for (i=0 ; i< cmd_text.cursize ; i++)
  {
   if (text[i] == '"')
    quotes++;

   if ( !(quotes&1)) {
    if (i < cmd_text.cursize - 1) {
     if (! in_star_comment && text[i] == '/' && text[i+1] == '/')
      in_slash_comment = qtrue;
     else if (! in_slash_comment && text[i] == '/' && text[i+1] == '*')
      in_star_comment = qtrue;
     else if (in_star_comment && text[i] == '*' && text[i+1] == '/') {
      in_star_comment = qfalse;



      i++;
      break;
     }
    }
    if (! in_slash_comment && ! in_star_comment && text[i] == ';')
     break;
   }
   if (! in_star_comment && (text[i] == '\n' || text[i] == '\r')) {
    in_slash_comment = qfalse;
    break;
   }
  }

  if( i >= (MAX_CMD_LINE - 1)) {
   i = MAX_CMD_LINE - 1;
  }

  Com_Memcpy (line, text, i);
  line[i] = 0;





  if (i == cmd_text.cursize)
   cmd_text.cursize = 0;
  else
  {
   i++;
   cmd_text.cursize -= i;
   memmove (text, text+i, cmd_text.cursize);
  }



  Cmd_ExecuteString (line);
 }
}
