
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
typedef double uint64_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sender_state {struct sockaddr_in addr; int udp_handle; int send_req; } ;
struct receiver_state {struct sockaddr_in addr; int udp_handle; int send_req; } ;


 unsigned int ARRAY_SIZE (struct sender_state*) ;
 int ASSERT (int) ;
 scalar_t__ BASE_PORT ;
 scalar_t__ EXPECTED ;
 int MAKE_VALGRIND_HAPPY () ;
 int UV_RUN_DEFAULT ;
 int alloc_cb ;
 struct sender_state* bufs ;
 unsigned int n_receivers_ ;
 unsigned int n_senders_ ;
 int printf (char*,unsigned int,unsigned int,double,double,double,double,double) ;
 struct sender_state* receivers ;
 int recv_cb ;
 double recv_cb_called ;
 int send_cb ;
 double send_cb_called ;
 struct sender_state* senders ;
 int timed ;
 int timeout_cb ;
 struct sender_state uv_buf_init (scalar_t__,int) ;
 int * uv_default_loop () ;
 double uv_hrtime () ;
 scalar_t__ uv_ip4_addr (char*,scalar_t__,struct sockaddr_in*) ;
 scalar_t__ uv_run (int *,int ) ;
 scalar_t__ uv_timer_init (int *,int *) ;
 scalar_t__ uv_timer_start (int *,int ,unsigned long,int ) ;
 scalar_t__ uv_udp_bind (int *,struct sockaddr const*,int ) ;
 scalar_t__ uv_udp_init (int *,int *) ;
 scalar_t__ uv_udp_recv_start (int *,int ,int ) ;
 scalar_t__ uv_udp_send (int *,int *,struct sender_state*,unsigned int,struct sockaddr const*,int ) ;
 int uv_unref (int *) ;

__attribute__((used)) static int pummel(unsigned int n_senders,
                  unsigned int n_receivers,
                  unsigned long timeout) {
  uv_timer_t timer_handle;
  uint64_t duration;
  uv_loop_t* loop;
  unsigned int i;

  ASSERT(n_senders <= ARRAY_SIZE(senders));
  ASSERT(n_receivers <= ARRAY_SIZE(receivers));

  loop = uv_default_loop();

  n_senders_ = n_senders;
  n_receivers_ = n_receivers;

  if (timeout) {
    ASSERT(0 == uv_timer_init(loop, &timer_handle));
    ASSERT(0 == uv_timer_start(&timer_handle, timeout_cb, timeout, 0));

    uv_unref((uv_handle_t*)&timer_handle);
    timed = 1;
  }

  for (i = 0; i < n_receivers; i++) {
    struct receiver_state* s = receivers + i;
    struct sockaddr_in addr;
    ASSERT(0 == uv_ip4_addr("0.0.0.0", BASE_PORT + i, &addr));
    ASSERT(0 == uv_udp_init(loop, &s->udp_handle));
    ASSERT(0 == uv_udp_bind(&s->udp_handle, (const struct sockaddr*) &addr, 0));
    ASSERT(0 == uv_udp_recv_start(&s->udp_handle, alloc_cb, recv_cb));
    uv_unref((uv_handle_t*)&s->udp_handle);
  }

  bufs[0] = uv_buf_init(EXPECTED + 0, 10);
  bufs[1] = uv_buf_init(EXPECTED + 10, 10);
  bufs[2] = uv_buf_init(EXPECTED + 20, 10);
  bufs[3] = uv_buf_init(EXPECTED + 30, 10);
  bufs[4] = uv_buf_init(EXPECTED + 40, 5);

  for (i = 0; i < n_senders; i++) {
    struct sender_state* s = senders + i;
    ASSERT(0 == uv_ip4_addr("127.0.0.1",
                            BASE_PORT + (i % n_receivers),
                            &s->addr));
    ASSERT(0 == uv_udp_init(loop, &s->udp_handle));
    ASSERT(0 == uv_udp_send(&s->send_req,
                            &s->udp_handle,
                            bufs,
                            ARRAY_SIZE(bufs),
                            (const struct sockaddr*) &s->addr,
                            send_cb));
  }

  duration = uv_hrtime();
  ASSERT(0 == uv_run(loop, UV_RUN_DEFAULT));
  duration = uv_hrtime() - duration;

  duration = duration / (uint64_t) 1e6;

  printf("udp_pummel_%dv%d: %.0f/s received, %.0f/s sent. "
         "%u received, %u sent in %.1f seconds.\n",
         n_receivers,
         n_senders,
         recv_cb_called / (duration / 1000.0),
         send_cb_called / (duration / 1000.0),
         recv_cb_called,
         send_cb_called,
         duration / 1000.0);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
