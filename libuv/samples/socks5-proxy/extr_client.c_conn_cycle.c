
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int buf; } ;
struct TYPE_8__ {scalar_t__ result; scalar_t__ wrstate; scalar_t__ rdstate; TYPE_1__ t; } ;
typedef TYPE_2__ conn ;


 scalar_t__ UV_EOF ;
 scalar_t__ c_done ;
 scalar_t__ c_stop ;
 int conn_read (TYPE_2__*) ;
 int conn_write (TYPE_2__*,int ,scalar_t__) ;
 int pr_err (char*,char const*,int ) ;
 int uv_strerror (scalar_t__) ;

__attribute__((used)) static int conn_cycle(const char *who, conn *a, conn *b) {
  if (a->result < 0) {
    if (a->result != UV_EOF) {
      pr_err("%s error: %s", who, uv_strerror(a->result));
    }
    return -1;
  }

  if (b->result < 0) {
    return -1;
  }

  if (a->wrstate == c_done) {
    a->wrstate = c_stop;
  }





  if (a->wrstate == c_stop) {
    if (b->rdstate == c_stop) {
      conn_read(b);
    } else if (b->rdstate == c_done) {
      conn_write(a, b->t.buf, b->result);
      b->rdstate = c_stop;
    }
  }

  return 0;
}
