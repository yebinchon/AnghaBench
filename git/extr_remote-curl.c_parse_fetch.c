
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct ref {struct ref* next; int old_oid; } ;
struct object_id {int dummy; } ;


 int ALLOC_GROW (struct ref**,int,int) ;
 scalar_t__ EOF ;
 int _ (char*) ;
 struct ref* alloc_ref (char const*) ;
 int die (int ,char const*) ;
 int exit (int) ;
 scalar_t__ fetch (int,struct ref**) ;
 int fflush (int ) ;
 int free (struct ref**) ;
 int free_refs (struct ref*) ;
 int oidcpy (int *,struct object_id*) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 int printf (char*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int stdin ;
 int stdout ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void parse_fetch(struct strbuf *buf)
{
 struct ref **to_fetch = ((void*)0);
 struct ref *list_head = ((void*)0);
 struct ref **list = &list_head;
 int alloc_heads = 0, nr_heads = 0;

 do {
  const char *p;
  if (skip_prefix(buf->buf, "fetch ", &p)) {
   const char *name;
   struct ref *ref;
   struct object_id old_oid;
   const char *q;

   if (parse_oid_hex(p, &old_oid, &q))
    die(_("protocol error: expected sha/ref, got '%s'"), p);
   if (*q == ' ')
    name = q + 1;
   else if (!*q)
    name = "";
   else
    die(_("protocol error: expected sha/ref, got '%s'"), p);

   ref = alloc_ref(name);
   oidcpy(&ref->old_oid, &old_oid);

   *list = ref;
   list = &ref->next;

   ALLOC_GROW(to_fetch, nr_heads + 1, alloc_heads);
   to_fetch[nr_heads++] = ref;
  }
  else
   die(_("http transport does not support %s"), buf->buf);

  strbuf_reset(buf);
  if (strbuf_getline_lf(buf, stdin) == EOF)
   return;
  if (!*buf->buf)
   break;
 } while (1);

 if (fetch(nr_heads, to_fetch))
  exit(128);
 free_refs(list_head);
 free(to_fetch);

 printf("\n");
 fflush(stdout);
 strbuf_reset(buf);
}
