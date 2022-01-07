
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdiff_driver {struct notes_cache* textconv_cache; int textconv; int name; scalar_t__ textconv_want_cache; } ;
struct strbuf {int buf; } ;
struct repository {int dummy; } ;
struct notes_cache {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int notes_cache_init (struct repository*,struct notes_cache*,int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 struct notes_cache* xmalloc (int) ;

struct userdiff_driver *userdiff_get_textconv(struct repository *r,
           struct userdiff_driver *driver)
{
 if (!driver->textconv)
  return ((void*)0);

 if (driver->textconv_want_cache && !driver->textconv_cache) {
  struct notes_cache *c = xmalloc(sizeof(*c));
  struct strbuf name = STRBUF_INIT;

  strbuf_addf(&name, "textconv/%s", driver->name);
  notes_cache_init(r, c, name.buf, driver->textconv);
  driver->textconv_cache = c;
  strbuf_release(&name);
 }

 return driver;
}
