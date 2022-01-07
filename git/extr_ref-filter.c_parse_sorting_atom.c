
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_format {int dummy; } ;


 struct ref_format REF_FORMAT_INIT ;
 struct strbuf STRBUF_INIT ;
 int die (char*,int ) ;
 int parse_ref_filter_atom (struct ref_format*,char const*,char const*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;

__attribute__((used)) static int parse_sorting_atom(const char *atom)
{




 struct ref_format dummy = REF_FORMAT_INIT;
 const char *end = atom + strlen(atom);
 struct strbuf err = STRBUF_INIT;
 int res = parse_ref_filter_atom(&dummy, atom, end, &err);
 if (res < 0)
  die("%s", err.buf);
 strbuf_release(&err);
 return res;
}
