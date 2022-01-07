
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;



__attribute__((used)) static int last_line_length(struct strbuf *sb)
{
 int i;


 for (i = sb->len - 1; i >= 0; i--)
  if (sb->buf[i] == '\n')
   break;
 return sb->len - (i + 1);
}
