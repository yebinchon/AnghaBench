
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ slurp_attr (char const*,char const*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int strcasecmp (int ,char const*) ;

__attribute__((used)) static int has_attr_value(const char *line, const char *name, const char *value)
{
 struct strbuf sb = STRBUF_INIT;
 int rc = slurp_attr(line, name, &sb) && !strcasecmp(sb.buf, value);
 strbuf_release(&sb);
 return rc;
}
