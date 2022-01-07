
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ check_refname_format (int ,int ) ;
 int die (int ,char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_list_free (struct strbuf**) ;
 int strbuf_reset (struct strbuf*) ;
 struct strbuf** strbuf_split (struct strbuf*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *expand_namespace(const char *raw_namespace)
{
 struct strbuf buf = STRBUF_INIT;
 struct strbuf **components, **c;

 if (!raw_namespace || !*raw_namespace)
  return xstrdup("");

 strbuf_addstr(&buf, raw_namespace);
 components = strbuf_split(&buf, '/');
 strbuf_reset(&buf);
 for (c = components; *c; c++)
  if (strcmp((*c)->buf, "/") != 0)
   strbuf_addf(&buf, "refs/namespaces/%s", (*c)->buf);
 strbuf_list_free(components);
 if (check_refname_format(buf.buf, 0))
  die(_("bad git namespace path \"%s\""), raw_namespace);
 strbuf_addch(&buf, '/');
 return strbuf_detach(&buf, ((void*)0));
}
