
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int WM_CASEFOLD ;
 scalar_t__ ignore_case ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;
 int wildmatch (char const*,char const*,int) ;

__attribute__((used)) static int fnmatch_icase_mem(const char *pattern, int patternlen,
        const char *string, int stringlen,
        int flags)
{
 int match_status;
 struct strbuf pat_buf = STRBUF_INIT;
 struct strbuf str_buf = STRBUF_INIT;
 const char *use_pat = pattern;
 const char *use_str = string;

 if (pattern[patternlen]) {
  strbuf_add(&pat_buf, pattern, patternlen);
  use_pat = pat_buf.buf;
 }
 if (string[stringlen]) {
  strbuf_add(&str_buf, string, stringlen);
  use_str = str_buf.buf;
 }

 if (ignore_case)
  flags |= WM_CASEFOLD;
 match_status = wildmatch(use_pat, use_str, flags);

 strbuf_release(&pat_buf);
 strbuf_release(&str_buf);

 return match_status;
}
