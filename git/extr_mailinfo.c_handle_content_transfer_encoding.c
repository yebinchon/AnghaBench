
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct mailinfo {int transfer_encoding; } ;


 int TE_BASE64 ;
 int TE_DONTCARE ;
 int TE_QP ;
 scalar_t__ strcasestr (int ,char*) ;

__attribute__((used)) static void handle_content_transfer_encoding(struct mailinfo *mi,
          const struct strbuf *line)
{
 if (strcasestr(line->buf, "base64"))
  mi->transfer_encoding = TE_BASE64;
 else if (strcasestr(line->buf, "quoted-printable"))
  mi->transfer_encoding = TE_QP;
 else
  mi->transfer_encoding = TE_DONTCARE;
}
