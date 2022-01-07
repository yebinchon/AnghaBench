
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 int TR2_SYSENV_CFG_PARAM ;
 int strbuf_setlen (struct strbuf*,int) ;
 struct strbuf** strbuf_split_buf (char const*,int ,char,int) ;
 int strbuf_trim (struct strbuf*) ;
 int strbuf_trim_trailing_newline (struct strbuf*) ;
 int strlen (char const*) ;
 int tr2_cfg_count_patterns ;
 int tr2_cfg_loaded ;
 struct strbuf** tr2_cfg_patterns ;
 char* tr2_sysenv_get (int ) ;

__attribute__((used)) static int tr2_cfg_load_patterns(void)
{
 struct strbuf **s;
 const char *envvar;

 if (tr2_cfg_loaded)
  return tr2_cfg_count_patterns;
 tr2_cfg_loaded = 1;

 envvar = tr2_sysenv_get(TR2_SYSENV_CFG_PARAM);
 if (!envvar || !*envvar)
  return tr2_cfg_count_patterns;

 tr2_cfg_patterns = strbuf_split_buf(envvar, strlen(envvar), ',', -1);
 for (s = tr2_cfg_patterns; *s; s++) {
  struct strbuf *buf = *s;

  if (buf->len && buf->buf[buf->len - 1] == ',')
   strbuf_setlen(buf, buf->len - 1);
  strbuf_trim_trailing_newline(*s);
  strbuf_trim(*s);
 }

 tr2_cfg_count_patterns = s - tr2_cfg_patterns;
 return tr2_cfg_count_patterns;
}
