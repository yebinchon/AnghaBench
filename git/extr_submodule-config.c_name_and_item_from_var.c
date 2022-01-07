
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int _ (char*) ;
 scalar_t__ check_submodule_name (int ) ;
 int parse_config_key (char const*,char*,char const**,int*,char const**) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int warning (int ,int ) ;

__attribute__((used)) static int name_and_item_from_var(const char *var, struct strbuf *name,
      struct strbuf *item)
{
 const char *subsection, *key;
 int subsection_len, parse;
 parse = parse_config_key(var, "submodule", &subsection,
   &subsection_len, &key);
 if (parse < 0 || !subsection)
  return 0;

 strbuf_add(name, subsection, subsection_len);
 if (check_submodule_name(name->buf) < 0) {
  warning(_("ignoring suspicious submodule name: %s"), name->buf);
  strbuf_release(name);
  return 0;
 }

 strbuf_addstr(item, key);

 return 1;
}
