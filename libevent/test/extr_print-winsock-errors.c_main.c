
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err ;


 int E (int) ;
 int EXIT_SUCCESS ;
 int WSAEACCES ;
 int WSAEADDRINUSE ;
 int WSAEADDRNOTAVAIL ;
 int WSAEAFNOSUPPORT ;
 int WSAEALREADY ;
 int WSAECONNABORTED ;
 int WSAECONNREFUSED ;
 int WSAECONNRESET ;
 int WSAEDESTADDRREQ ;
 int WSAEDISCON ;
 int WSAEFAULT ;
 int WSAEHOSTDOWN ;
 int WSAEHOSTUNREACH ;
 int WSAEINPROGRESS ;
 int WSAEINTR ;
 int WSAEINVAL ;
 int WSAEISCONN ;
 int WSAEMFILE ;
 int WSAEMSGSIZE ;
 int WSAENETDOWN ;
 int WSAENETRESET ;
 int WSAENETUNREACH ;
 int WSAENOBUFS ;
 int WSAENOPROTOOPT ;
 int WSAENOTCONN ;
 int WSAENOTSOCK ;
 int WSAEOPNOTSUPP ;
 int WSAEPFNOSUPPORT ;
 int WSAEPROCLIM ;
 int WSAEPROTONOSUPPORT ;
 int WSAEPROTOTYPE ;
 int WSAESHUTDOWN ;
 int WSAESOCKTNOSUPPORT ;
 int WSAETIMEDOUT ;
 int WSAEWOULDBLOCK ;
 int WSAHOST_NOT_FOUND ;
 int WSANOTINITIALISED ;
 int WSANO_DATA ;
 int WSANO_RECOVERY ;
 int WSASYSNOTREADY ;
 int WSATRY_AGAIN ;
 int WSATYPE_NOT_FOUND ;
 int WSAVERNOTSUPPORTED ;
 int evthread_use_windows_threads () ;
 int evutil_secure_rng_get_bytes (int*,int) ;
 char* evutil_socket_error_to_string (int) ;
 int libevent_global_shutdown () ;
 int printf (char*,...) ;

int main (int argc, char **argv)
{
  int i, j;
  const char *s1, *s2;





  s1 = evutil_socket_error_to_string (WSAEINTR);

  for (i = 0; i < 3; i++) {
    printf ("\niteration %d:\n\n", i);
    E(WSAEINTR);
    E(WSAEACCES);
    E(WSAEFAULT);
    E(WSAEINVAL);
    E(WSAEMFILE);
    E(WSAEWOULDBLOCK);
    E(WSAEINPROGRESS);
    E(WSAEALREADY);
    E(WSAENOTSOCK);
    E(WSAEDESTADDRREQ);
    E(WSAEMSGSIZE);
    E(WSAEPROTOTYPE);
    E(WSAENOPROTOOPT);
    E(WSAEPROTONOSUPPORT);
    E(WSAESOCKTNOSUPPORT);
    E(WSAEOPNOTSUPP);
    E(WSAEPFNOSUPPORT);
    E(WSAEAFNOSUPPORT);
    E(WSAEADDRINUSE);
    E(WSAEADDRNOTAVAIL);
    E(WSAENETDOWN);
    E(WSAENETUNREACH);
    E(WSAENETRESET);
    E(WSAECONNABORTED);
    E(WSAECONNRESET);
    E(WSAENOBUFS);
    E(WSAEISCONN);
    E(WSAENOTCONN);
    E(WSAESHUTDOWN);
    E(WSAETIMEDOUT);
    E(WSAECONNREFUSED);
    E(WSAEHOSTDOWN);
    E(WSAEHOSTUNREACH);
    E(WSAEPROCLIM);
    E(WSASYSNOTREADY);
    E(WSAVERNOTSUPPORTED);
    E(WSANOTINITIALISED);
    E(WSAEDISCON);
    E(WSATYPE_NOT_FOUND);
    E(WSAHOST_NOT_FOUND);
    E(WSATRY_AGAIN);
    E(WSANO_RECOVERY);
    E(WSANO_DATA);
    E(0xdeadbeef);


    for (j = 0; j < 50; j++) {
      int err;
      evutil_secure_rng_get_bytes(&err, sizeof(err));
      evutil_socket_error_to_string(err);
    }
  }

  s2 = evutil_socket_error_to_string (WSAEINTR);
  if (s1 != s2)
    printf ("caching failed!\n");

  libevent_global_shutdown ();

  return EXIT_SUCCESS;
}
