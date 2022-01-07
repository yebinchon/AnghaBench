
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int sanitize_client (struct strbuf*,char const*) ;
 int strbuf_tolower (struct strbuf*) ;

__attribute__((used)) static void canonicalize_client(struct strbuf *out, const char *in)
{
 sanitize_client(out, in);
 strbuf_tolower(out);
}
