
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int ALLOC_GROW (int *,int,int ) ;
 int REG_EXTENDED ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int config_error_nonbool (char const*) ;
 int core_island_name ;
 int die (int ,char const*,int ) ;
 int git_config_string (int *,char const*,char const*) ;
 int * island_regexes ;
 int island_regexes_alloc ;
 int island_regexes_nr ;
 scalar_t__ regcomp (int *,int ,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int island_config_callback(const char *k, const char *v, void *cb)
{
 if (!strcmp(k, "pack.island")) {
  struct strbuf re = STRBUF_INIT;

  if (!v)
   return config_error_nonbool(k);

  ALLOC_GROW(island_regexes, island_regexes_nr + 1, island_regexes_alloc);

  if (*v != '^')
   strbuf_addch(&re, '^');
  strbuf_addstr(&re, v);

  if (regcomp(&island_regexes[island_regexes_nr], re.buf, REG_EXTENDED))
   die(_("failed to load island regex for '%s': %s"), k, re.buf);

  strbuf_release(&re);
  island_regexes_nr++;
  return 0;
 }

 if (!strcmp(k, "pack.islandcore"))
  return git_config_string(&core_island_name, k, v);

 return 0;
}
