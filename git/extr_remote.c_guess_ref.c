
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref {int name; } ;


 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 char* resolve_ref_unsafe (int ,int ,int *,int *) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static char *guess_ref(const char *name, struct ref *peer)
{
 struct strbuf buf = STRBUF_INIT;

 const char *r = resolve_ref_unsafe(peer->name, RESOLVE_REF_READING,
        ((void*)0), ((void*)0));
 if (!r)
  return ((void*)0);

 if (starts_with(r, "refs/heads/")) {
  strbuf_addstr(&buf, "refs/heads/");
 } else if (starts_with(r, "refs/tags/")) {
  strbuf_addstr(&buf, "refs/tags/");
 } else {
  return ((void*)0);
 }

 strbuf_addstr(&buf, name);
 return strbuf_detach(&buf, ((void*)0));
}
