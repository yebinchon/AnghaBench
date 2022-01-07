
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int dummy; } ;


 int close_chan (struct line*) ;

void close_lines(struct line *lines, int nlines)
{
 int i;

 for(i = 0; i < nlines; i++)
  close_chan(&lines[i]);
}
