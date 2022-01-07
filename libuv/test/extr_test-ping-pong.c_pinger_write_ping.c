
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_write_t ;
typedef int uv_stream_t ;
typedef int uv_buf_t ;
struct TYPE_4__ {int tcp; } ;
struct TYPE_5__ {TYPE_1__ stream; int vectored_writes; } ;
typedef TYPE_2__ pinger_t ;


 int FATAL (char*) ;
 int * PING ;
 int * malloc (int) ;
 int pinger_after_write ;
 int puts (char*) ;
 int uv_buf_init (int *,int) ;
 scalar_t__ uv_write (int *,int *,int *,int,int ) ;

__attribute__((used)) static void pinger_write_ping(pinger_t* pinger) {
  uv_write_t *req;
  uv_buf_t bufs[sizeof PING - 1];
  int i, nbufs;

  if (!pinger->vectored_writes) {

    nbufs = 1;
    bufs[0] = uv_buf_init(PING, sizeof PING - 1);
  } else {

    nbufs = sizeof PING - 1;
    for (i = 0; i < nbufs; i++) {
      bufs[i] = uv_buf_init(&PING[i], 1);
    }
  }

  req = malloc(sizeof(*req));
  if (uv_write(req,
               (uv_stream_t*) &pinger->stream.tcp,
               bufs,
               nbufs,
               pinger_after_write)) {
    FATAL("uv_write failed");
  }

  puts("PING");
}
