
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cursize; int maxsize; int data; } ;


 int MAX_CMD_BUFFER ;
 TYPE_1__ cmd_text ;
 int cmd_text_buf ;

void Cbuf_Init (void)
{
 cmd_text.data = cmd_text_buf;
 cmd_text.maxsize = MAX_CMD_BUFFER;
 cmd_text.cursize = 0;
}
