
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; char* buf; } ;
struct xdiff_emit_state {TYPE_3__ remainder; int line_fn; } ;
struct TYPE_5__ {char* ptr; int size; } ;
typedef TYPE_1__ mmbuffer_t ;


 int consume_one (struct xdiff_emit_state*,char*,int) ;
 int strbuf_add (TYPE_3__*,char*,int) ;
 int strbuf_reset (TYPE_3__*) ;

__attribute__((used)) static int xdiff_outf(void *priv_, mmbuffer_t *mb, int nbuf)
{
 struct xdiff_emit_state *priv = priv_;
 int i;

 if (!priv->line_fn)
  return 0;

 for (i = 0; i < nbuf; i++) {
  if (mb[i].ptr[mb[i].size-1] != '\n') {

   strbuf_add(&priv->remainder, mb[i].ptr, mb[i].size);
   continue;
  }


  if (!priv->remainder.len) {
   consume_one(priv, mb[i].ptr, mb[i].size);
   continue;
  }
  strbuf_add(&priv->remainder, mb[i].ptr, mb[i].size);
  consume_one(priv, priv->remainder.buf, priv->remainder.len);
  strbuf_reset(&priv->remainder);
 }
 if (priv->remainder.len) {
  consume_one(priv, priv->remainder.buf, priv->remainder.len);
  strbuf_reset(&priv->remainder);
 }
 return 0;
}
