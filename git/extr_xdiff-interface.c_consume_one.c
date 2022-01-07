
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdiff_emit_state {int consume_callback_data; int (* line_fn ) (int ,char*,unsigned long) ;} ;


 char* memchr (char*,char,unsigned long) ;
 int stub1 (int ,char*,unsigned long) ;

__attribute__((used)) static void consume_one(void *priv_, char *s, unsigned long size)
{
 struct xdiff_emit_state *priv = priv_;
 char *ep;
 while (size) {
  unsigned long this_size;
  ep = memchr(s, '\n', size);
  this_size = (ep == ((void*)0)) ? size : (ep - s + 1);
  priv->line_fn(priv->consume_callback_data, s, this_size);
  size -= this_size;
  s += this_size;
 }
}
