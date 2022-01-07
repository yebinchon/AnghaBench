
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct xdiff_emit_state {int consume_callback_data; int (* hunk_fn ) (int ,long,long,long,long,char const*,long) ;TYPE_1__ remainder; } ;


 int BUG (char*) ;
 int stub1 (int ,long,long,long,long,char const*,long) ;

__attribute__((used)) static int xdiff_out_hunk(void *priv_,
     long old_begin, long old_nr,
     long new_begin, long new_nr,
     const char *func, long funclen)
{
 struct xdiff_emit_state *priv = priv_;

 if (priv->remainder.len)
  BUG("xdiff emitted hunk in the middle of a line");

 priv->hunk_fn(priv->consume_callback_data,
        old_begin, old_nr, new_begin, new_nr,
        func, funclen);
 return 0;
}
