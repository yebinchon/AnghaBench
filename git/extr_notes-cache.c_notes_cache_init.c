
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct repository {int dummy; } ;
struct notes_cache {int tree; int validity; } ;


 int NOTES_INIT_EMPTY ;
 int NOTES_INIT_WRITABLE ;
 struct strbuf STRBUF_INIT ;
 int combine_notes_overwrite ;
 int init_notes (int *,int ,int ,int) ;
 int memset (struct notes_cache*,int ,int) ;
 int notes_cache_match_validity (struct repository*,int ,char const*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int xstrdup (char const*) ;

void notes_cache_init(struct repository *r, struct notes_cache *c,
        const char *name, const char *validity)
{
 struct strbuf ref = STRBUF_INIT;
 int flags = NOTES_INIT_WRITABLE;

 memset(c, 0, sizeof(*c));
 c->validity = xstrdup(validity);

 strbuf_addf(&ref, "refs/notes/%s", name);
 if (!notes_cache_match_validity(r, ref.buf, validity))
  flags |= NOTES_INIT_EMPTY;
 init_notes(&c->tree, ref.buf, combine_notes_overwrite, flags);
 strbuf_release(&ref);
}
