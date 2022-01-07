
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emitted_diff_symbol {int len; int * line; } ;
struct diff_options {TYPE_1__* emitted_symbols; } ;
struct TYPE_2__ {scalar_t__ nr; struct emitted_diff_symbol* buf; int alloc; } ;


 int ALLOC_GROW (struct emitted_diff_symbol*,scalar_t__,int ) ;
 int memcpy (struct emitted_diff_symbol*,struct emitted_diff_symbol*,int) ;
 int * xmemdupz (int *,int ) ;

__attribute__((used)) static void append_emitted_diff_symbol(struct diff_options *o,
           struct emitted_diff_symbol *e)
{
 struct emitted_diff_symbol *f;

 ALLOC_GROW(o->emitted_symbols->buf,
     o->emitted_symbols->nr + 1,
     o->emitted_symbols->alloc);
 f = &o->emitted_symbols->buf[o->emitted_symbols->nr++];

 memcpy(f, e, sizeof(struct emitted_diff_symbol));
 f->line = e->line ? xmemdupz(e->line, e->len) : ((void*)0);
}
