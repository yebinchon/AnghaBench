
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* out_hunk ) (int ,long,long,long,long,char const*,long) ;int priv; } ;
typedef TYPE_1__ xdemitcb_t ;


 scalar_t__ stub1 (int ,long,long,long,long,char const*,long) ;
 int xdl_format_hunk_hdr (long,long,long,long,char const*,long,TYPE_1__*) ;

int xdl_emit_hunk_hdr(long s1, long c1, long s2, long c2,
        const char *func, long funclen,
        xdemitcb_t *ecb) {
 if (!ecb->out_hunk)
  return xdl_format_hunk_hdr(s1, c1, s2, c2, func, funclen, ecb);
 if (ecb->out_hunk(ecb->priv,
     c1 ? s1 : s1 - 1, c1,
     c2 ? s2 : s2 - 1, c2,
     func, funclen) < 0)
  return -1;
 return 0;
}
