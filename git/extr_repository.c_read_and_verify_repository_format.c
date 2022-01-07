
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct repository_format {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int read_repository_format (struct repository_format*,int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 scalar_t__ verify_repository_format (struct repository_format*,struct strbuf*) ;
 int warning (char*,int ) ;

__attribute__((used)) static int read_and_verify_repository_format(struct repository_format *format,
          const char *commondir)
{
 int ret = 0;
 struct strbuf sb = STRBUF_INIT;

 strbuf_addf(&sb, "%s/config", commondir);
 read_repository_format(format, sb.buf);
 strbuf_reset(&sb);

 if (verify_repository_format(format, &sb) < 0) {
  warning("%s", sb.buf);
  ret = -1;
 }

 strbuf_release(&sb);
 return ret;
}
