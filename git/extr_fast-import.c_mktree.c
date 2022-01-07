
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tree_entry {TYPE_3__* versions; TYPE_1__* name; } ;
struct tree_content {unsigned int entry_count; struct tree_entry** entries; } ;
struct strbuf {int dummy; } ;
struct TYPE_8__ {int rawsz; } ;
struct TYPE_6__ {int hash; } ;
struct TYPE_7__ {int mode; TYPE_2__ oid; } ;
struct TYPE_5__ {int str_dat; scalar_t__ str_len; } ;


 int NO_DELTA ;
 int QSORT (struct tree_entry**,unsigned int,int ) ;
 int strbuf_add (struct strbuf*,int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,unsigned int,int ,char) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_reset (struct strbuf*) ;
 int tecmp0 ;
 int tecmp1 ;
 TYPE_4__* the_hash_algo ;

__attribute__((used)) static void mktree(struct tree_content *t, int v, struct strbuf *b)
{
 size_t maxlen = 0;
 unsigned int i;

 if (!v)
  QSORT(t->entries, t->entry_count, tecmp0);
 else
  QSORT(t->entries, t->entry_count, tecmp1);

 for (i = 0; i < t->entry_count; i++) {
  if (t->entries[i]->versions[v].mode)
   maxlen += t->entries[i]->name->str_len + 34;
 }

 strbuf_reset(b);
 strbuf_grow(b, maxlen);
 for (i = 0; i < t->entry_count; i++) {
  struct tree_entry *e = t->entries[i];
  if (!e->versions[v].mode)
   continue;
  strbuf_addf(b, "%o %s%c",
   (unsigned int)(e->versions[v].mode & ~NO_DELTA),
   e->name->str_dat, '\0');
  strbuf_add(b, e->versions[v].oid.hash, the_hash_algo->rawsz);
 }
}
