
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cursize; int maxsize; int * data; } ;


 int Com_Memcpy (int *,char const*,int) ;
 int Com_Printf (char*) ;
 TYPE_1__ cmd_text ;
 int strlen (char const*) ;

void Cbuf_AddText( const char *text ) {
 int l;

 l = strlen (text);

 if (cmd_text.cursize + l >= cmd_text.maxsize)
 {
  Com_Printf ("Cbuf_AddText: overflow\n");
  return;
 }
 Com_Memcpy(&cmd_text.data[cmd_text.cursize], text, l);
 cmd_text.cursize += l;
}
