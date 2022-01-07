
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int dummy; } ;


 int free (char*) ;
 int get_main_ref_store (struct repository*) ;
 char* refs_shorten_unambiguous_ref (int ,char const*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void set_shortened_ref(struct repository *r, struct strbuf *buf, const char *ref)
{
 char *s = refs_shorten_unambiguous_ref(get_main_ref_store(r), ref, 0);
 strbuf_reset(buf);
 strbuf_addstr(buf, s);
 free(s);
}
