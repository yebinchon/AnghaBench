
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reading; int buf; } ;
typedef TYPE_1__ WSFrame ;


 int memset (int ,int ,int) ;
 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static WSFrame *
new_wsframe (void)
{
  WSFrame *frame = xcalloc (1, sizeof (WSFrame));
  memset (frame->buf, 0, sizeof (frame->buf));
  frame->reading = 1;

  return frame;
}
