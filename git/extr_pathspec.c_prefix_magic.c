
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; int len; } ;
struct TYPE_3__ {unsigned int bit; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* pathspec_magic ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static void prefix_magic(struct strbuf *sb, int prefixlen, unsigned magic)
{
 int i;
 strbuf_addstr(sb, ":(");
 for (i = 0; i < ARRAY_SIZE(pathspec_magic); i++)
  if (magic & pathspec_magic[i].bit) {
   if (sb->buf[sb->len - 1] != '(')
    strbuf_addch(sb, ',');
   strbuf_addstr(sb, pathspec_magic[i].name);
  }
 strbuf_addf(sb, ",prefix:%d)", prefixlen);
}
