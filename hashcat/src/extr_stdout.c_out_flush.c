
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int fp; int buf; } ;
typedef TYPE_1__ out_t ;


 int hc_fwrite (int ,int,scalar_t__,int *) ;

__attribute__((used)) static void out_flush (out_t *out)
{
  if (out->len == 0) return;

  hc_fwrite (out->buf, 1, out->len, &out->fp);

  out->len = 0;
}
