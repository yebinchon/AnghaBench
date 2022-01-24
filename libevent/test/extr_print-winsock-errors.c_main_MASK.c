#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6 (int argc, char **argv)
{
  int i, j;
  const char *s1, *s2;

#ifdef EVTHREAD_USE_WINDOWS_THREADS_IMPLEMENTED
  evthread_use_windows_threads ();
#endif

  s1 = FUNC3 (WSAEINTR);

  for (i = 0; i < 3; i++) {
    FUNC5 ("\niteration %d:\n\n", i);
    FUNC0(WSAEINTR);
    FUNC0(WSAEACCES);
    FUNC0(WSAEFAULT);
    FUNC0(WSAEINVAL);
    FUNC0(WSAEMFILE);
    FUNC0(WSAEWOULDBLOCK);
    FUNC0(WSAEINPROGRESS);
    FUNC0(WSAEALREADY);
    FUNC0(WSAENOTSOCK);
    FUNC0(WSAEDESTADDRREQ);
    FUNC0(WSAEMSGSIZE);
    FUNC0(WSAEPROTOTYPE);
    FUNC0(WSAENOPROTOOPT);
    FUNC0(WSAEPROTONOSUPPORT);
    FUNC0(WSAESOCKTNOSUPPORT);
    FUNC0(WSAEOPNOTSUPP);
    FUNC0(WSAEPFNOSUPPORT);
    FUNC0(WSAEAFNOSUPPORT);
    FUNC0(WSAEADDRINUSE);
    FUNC0(WSAEADDRNOTAVAIL);
    FUNC0(WSAENETDOWN);
    FUNC0(WSAENETUNREACH);
    FUNC0(WSAENETRESET);
    FUNC0(WSAECONNABORTED);
    FUNC0(WSAECONNRESET);
    FUNC0(WSAENOBUFS);
    FUNC0(WSAEISCONN);
    FUNC0(WSAENOTCONN);
    FUNC0(WSAESHUTDOWN);
    FUNC0(WSAETIMEDOUT);
    FUNC0(WSAECONNREFUSED);
    FUNC0(WSAEHOSTDOWN);
    FUNC0(WSAEHOSTUNREACH);
    FUNC0(WSAEPROCLIM);
    FUNC0(WSASYSNOTREADY);
    FUNC0(WSAVERNOTSUPPORTED);
    FUNC0(WSANOTINITIALISED);
    FUNC0(WSAEDISCON);
    FUNC0(WSATYPE_NOT_FOUND);
    FUNC0(WSAHOST_NOT_FOUND);
    FUNC0(WSATRY_AGAIN);
    FUNC0(WSANO_RECOVERY);
    FUNC0(WSANO_DATA);
    FUNC0(0xdeadbeef); /* test the case where no message is available */

    /* fill up the hash table a bit to make sure it grows properly */
    for (j = 0; j < 50; j++) {
      int err;
      FUNC2(&err, sizeof(err));
      FUNC3(err);
    }
  }

  s2 = FUNC3 (WSAEINTR);
  if (s1 != s2)
    FUNC5 ("caching failed!\n");

  FUNC4 ();

  return EXIT_SUCCESS;
}