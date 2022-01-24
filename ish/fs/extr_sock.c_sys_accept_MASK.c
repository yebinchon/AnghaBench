#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ domain; int /*<<< orphan*/  unix_got_peer; struct fd* unix_peer; int /*<<< orphan*/  unix_cred; int /*<<< orphan*/  protocol; int /*<<< orphan*/  type; } ;
struct fd {TYPE_1__ socket; int /*<<< orphan*/  real_fd; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sockaddr ;
typedef  int /*<<< orphan*/  peer ;
typedef  int int_t ;
typedef  scalar_t__ fd_t ;
typedef  int dword_t ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 scalar_t__ AF_LOCAL_ ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int _EBADF ; 
 int _EFAULT ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 () ; 
 struct fd* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  peer_lock ; 
 int FUNC8 (int,struct fd**,int) ; 
 scalar_t__ FUNC9 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fd* FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct fd*) ; 
 int /*<<< orphan*/  FUNC13 (struct fd*) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (scalar_t__,int) ; 
 scalar_t__ FUNC17 (scalar_t__,int) ; 

int_t FUNC18(fd_t sock_fd, addr_t sockaddr_addr, addr_t sockaddr_len_addr) {
    FUNC0("accept(%d, 0x%x, 0x%x)", sock_fd, sockaddr_addr, sockaddr_len_addr);
    struct fd *sock = FUNC10(sock_fd);
    if (sock == NULL)
        return _EBADF;
    dword_t sockaddr_len = 0;
    if (sockaddr_addr != 0) {
        if (FUNC16(sockaddr_len_addr, sockaddr_len))
            return _EFAULT;
    }

    char sockaddr[sockaddr_len];
    int client;
    do {
        FUNC12(sock);
        errno = 0;
        client = FUNC1(sock->real_fd,
                sockaddr_addr != 0 ? (void *) sockaddr : NULL,
                sockaddr_addr != 0 ? &sockaddr_len : NULL);
        FUNC13(sock);
    } while (FUNC14() && errno == EINTR);
    if (client < 0)
        return FUNC3();

    if (sockaddr_addr != 0) {
        int err = FUNC11(sockaddr_addr, sockaddr, sizeof(sockaddr), &sockaddr_len);
        if (err < 0)
            return client;
        if (FUNC17(sockaddr_len_addr, sockaddr_len))
            return _EFAULT;
    }

    fd_t client_f = FUNC9(client,
            sock->socket.domain, sock->socket.type, sock->socket.protocol);
    if (client_f < 0)
        FUNC2(client);

    if (sock->socket.domain == AF_LOCAL_) {
        FUNC6(&peer_lock);
        struct fd *client_fd = FUNC4(client_f);
        FUNC5(&client_fd->socket.unix_cred);
        struct fd *peer;
        ssize_t res = FUNC8(client, &peer, sizeof(peer));
        if (res == sizeof(peer)) {
            client_fd->socket.unix_peer = peer;
            peer->socket.unix_peer = client_fd;
            FUNC7(&peer->socket.unix_got_peer);
        }
        FUNC15(&peer_lock);
    }

    return client_f;
}