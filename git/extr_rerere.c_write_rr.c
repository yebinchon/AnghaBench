
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int len; int buf; } ;
struct rerere_id {scalar_t__ variant; } ;
struct TYPE_2__ {int string; struct rerere_id* util; } ;


 struct rerere_id* RERERE_RESOLVED ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int assert (int) ;
 scalar_t__ commit_lock_file (int *) ;
 int die (int ) ;
 int rerere_id_hex (struct rerere_id*) ;
 int strbuf_addf (struct strbuf*,char*,int ,scalar_t__,int ,...) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ write_in_full (int,int ,int ) ;
 int write_lock ;

__attribute__((used)) static int write_rr(struct string_list *rr, int out_fd)
{
 int i;
 for (i = 0; i < rr->nr; i++) {
  struct strbuf buf = STRBUF_INIT;
  struct rerere_id *id;

  assert(rr->items[i].util != RERERE_RESOLVED);

  id = rr->items[i].util;
  if (!id)
   continue;
  assert(id->variant >= 0);
  if (0 < id->variant)
   strbuf_addf(&buf, "%s.%d\t%s%c",
        rerere_id_hex(id), id->variant,
        rr->items[i].string, 0);
  else
   strbuf_addf(&buf, "%s\t%s%c",
        rerere_id_hex(id),
        rr->items[i].string, 0);

  if (write_in_full(out_fd, buf.buf, buf.len) < 0)
   die(_("unable to write rerere record"));

  strbuf_release(&buf);
 }
 if (commit_lock_file(&write_lock) != 0)
  die(_("unable to write rerere record"));
 return 0;
}
