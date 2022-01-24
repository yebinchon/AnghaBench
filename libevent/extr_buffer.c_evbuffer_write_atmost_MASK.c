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
struct evbuffer_chain {int flags; } ;
struct evbuffer {size_t total_len; struct evbuffer_chain* first; scalar_t__ freeze_start; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  size_t ev_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int EVBUFFER_SENDFILE ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int) ; 
 void* FUNC4 (struct evbuffer*,size_t) ; 
 int FUNC5 (struct evbuffer*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (struct evbuffer*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,void*,size_t) ; 

int
FUNC9(struct evbuffer *buffer, evutil_socket_t fd,
    ev_ssize_t howmuch)
{
	int n = -1;

	FUNC0(buffer);

	if (buffer->freeze_start) {
		goto done;
	}

	if (howmuch < 0 || (size_t)howmuch > buffer->total_len)
		howmuch = buffer->total_len;

	if (howmuch > 0) {
#ifdef USE_SENDFILE
		struct evbuffer_chain *chain = buffer->first;
		if (chain != NULL && (chain->flags & EVBUFFER_SENDFILE))
			n = evbuffer_write_sendfile(buffer, fd, howmuch);
		else {
#endif
#ifdef USE_IOVEC_IMPL
		n = evbuffer_write_iovec(buffer, fd, howmuch);
#elif defined(_WIN32)
		/* XXX(nickm) Don't disable this code until we know if
		 * the WSARecv code above works. */
		void *p = evbuffer_pullup(buffer, howmuch);
		EVUTIL_ASSERT(p || !howmuch);
		n = send(fd, p, howmuch, 0);
#else
		void *p = FUNC4(buffer, howmuch);
		FUNC2(p || !howmuch);
		n = FUNC8(fd, p, howmuch);
#endif
#ifdef USE_SENDFILE
		}
#endif
	}

	if (n > 0)
		FUNC3(buffer, n);

done:
	FUNC1(buffer);
	return (n);
}