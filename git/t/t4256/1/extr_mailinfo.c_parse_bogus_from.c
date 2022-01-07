
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_7__ {scalar_t__ len; } ;
struct mailinfo {TYPE_1__ email; TYPE_1__ name; } ;


 int get_sane_name (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int strbuf_add (TYPE_1__*,char*,int) ;
 int strbuf_reset (TYPE_1__*) ;
 int strbuf_trim (TYPE_1__*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void parse_bogus_from(struct mailinfo *mi, const struct strbuf *line)
{


 char *bra, *ket;



 if (mi->email.len)
  return;

 bra = strchr(line->buf, '<');
 if (!bra)
  return;
 ket = strchr(bra, '>');
 if (!ket)
  return;

 strbuf_reset(&mi->email);
 strbuf_add(&mi->email, bra + 1, ket - bra - 1);

 strbuf_reset(&mi->name);
 strbuf_add(&mi->name, line->buf, bra - line->buf);
 strbuf_trim(&mi->name);
 get_sane_name(&mi->name, &mi->name, &mi->email);
}
