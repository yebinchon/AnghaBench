
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct helper_data {int name; } ;


 int _ (char*) ;
 int exit (int) ;
 scalar_t__ recvline (struct helper_data*,struct strbuf*) ;
 int sendline (struct helper_data*,struct strbuf*) ;
 scalar_t__ starts_with (int ,char*) ;
 int strcmp (int ,char*) ;
 int warning (int ,int ,int ) ;

__attribute__((used)) static int strbuf_set_helper_option(struct helper_data *data,
        struct strbuf *buf)
{
 int ret;

 sendline(data, buf);
 if (recvline(data, buf))
  exit(128);

 if (!strcmp(buf->buf, "ok"))
  ret = 0;
 else if (starts_with(buf->buf, "error"))
  ret = -1;
 else if (!strcmp(buf->buf, "unsupported"))
  ret = 1;
 else {
  warning(_("%s unexpectedly said: '%s'"), data->name, buf->buf);
  ret = 1;
 }
 return ret;
}
