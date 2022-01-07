
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ ARRAY_SIZE (int*) ;
 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int UV_EINVAL ;
 int UV_ENOTSUP ;
 int UV_RUN_DEFAULT ;
 int * uv_default_loop () ;
 int uv_run (int *,int ) ;
 int uv_udp_bind (int *,struct sockaddr const*,int ) ;
 int uv_udp_init (int *,int *) ;
 int uv_udp_set_broadcast (int *,int) ;
 int uv_udp_set_multicast_loop (int *,int) ;
 int uv_udp_set_multicast_ttl (int *,int) ;
 int uv_udp_set_ttl (int *,int) ;
 int uv_unref (int *) ;

__attribute__((used)) static int udp_options_test(const struct sockaddr* addr) {
  static int invalid_ttls[] = { -1, 0, 256 };
  uv_loop_t* loop;
  uv_udp_t h;
  int i, r;

  loop = uv_default_loop();

  r = uv_udp_init(loop, &h);
  ASSERT(r == 0);

  uv_unref((uv_handle_t*)&h);

  r = uv_udp_bind(&h, addr, 0);
  ASSERT(r == 0);

  r = uv_udp_set_broadcast(&h, 1);
  r |= uv_udp_set_broadcast(&h, 1);
  r |= uv_udp_set_broadcast(&h, 0);
  r |= uv_udp_set_broadcast(&h, 0);
  ASSERT(r == 0);


  for (i = 1; i <= 255; i++) {
    r = uv_udp_set_ttl(&h, i);






    ASSERT(r == 0);

  }

  for (i = 0; i < (int) ARRAY_SIZE(invalid_ttls); i++) {
    r = uv_udp_set_ttl(&h, invalid_ttls[i]);
    ASSERT(r == UV_EINVAL);
  }

  r = uv_udp_set_multicast_loop(&h, 1);
  r |= uv_udp_set_multicast_loop(&h, 1);
  r |= uv_udp_set_multicast_loop(&h, 0);
  r |= uv_udp_set_multicast_loop(&h, 0);
  ASSERT(r == 0);


  for (i = 0; i <= 255; i++) {
    r = uv_udp_set_multicast_ttl(&h, i);
    ASSERT(r == 0);
  }


  r = uv_udp_set_multicast_ttl(&h, 256);
  ASSERT(r == UV_EINVAL);


  r = uv_run(loop, UV_RUN_DEFAULT);
  ASSERT(r == 0);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
