
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_5__ {TYPE_3__ pipe; } ;
struct TYPE_6__ {int vectored_writes; TYPE_1__ stream; int connect_req; scalar_t__ pongs; scalar_t__ state; } ;
typedef TYPE_2__ pinger_t ;


 int ASSERT (int) ;
 int TEST_PIPENAME ;
 scalar_t__ malloc (int) ;
 int pinger_on_connect ;
 scalar_t__ pinger_on_connect_count ;
 int uv_default_loop () ;
 int uv_pipe_connect (int *,TYPE_3__*,int ,int ) ;
 int uv_pipe_init (int ,TYPE_3__*,int ) ;

__attribute__((used)) static void pipe_pinger_new(int vectored_writes) {
  int r;
  pinger_t *pinger;

  pinger = (pinger_t*)malloc(sizeof(*pinger));
  ASSERT(pinger != ((void*)0));
  pinger->vectored_writes = vectored_writes;
  pinger->state = 0;
  pinger->pongs = 0;


  r = uv_pipe_init(uv_default_loop(), &pinger->stream.pipe, 0);
  pinger->stream.pipe.data = pinger;
  ASSERT(!r);



  uv_pipe_connect(&pinger->connect_req, &pinger->stream.pipe, TEST_PIPENAME,
      pinger_on_connect);


  ASSERT(pinger_on_connect_count == 0);
}
