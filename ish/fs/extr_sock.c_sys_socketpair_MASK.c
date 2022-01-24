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
struct TYPE_2__ {struct fd* unix_peer; } ;
struct fd {TYPE_1__ socket; } ;
typedef  int int_t ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int _EFAULT ; 
 int _EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 struct fd* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  peer_lock ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 

int_t FUNC12(dword_t domain, dword_t type, dword_t protocol, addr_t sockets_addr) {
    FUNC0("socketpair(%d, %d, %d, 0x%x)", domain, type, protocol, sockets_addr);
    int real_domain = FUNC5(domain);
    if (real_domain < 0)
        return _EINVAL;
    int real_type = FUNC7(type, protocol);
    if (real_type < 0)
        return _EINVAL;

    int sockets[2];
    int err = FUNC8(domain, type, protocol, sockets);
    if (err < 0)
        return FUNC2();

    FUNC4(&peer_lock);
    int fake_sockets[2];
    err = fake_sockets[0] = FUNC6(sockets[0], domain, type, protocol);
    if (fake_sockets[0] < 0) {
        FUNC10(&peer_lock);
        goto close_sockets;
    }
    err = fake_sockets[1] = FUNC6(sockets[1], domain, type, protocol);
    if (fake_sockets[1] < 0) {
        FUNC10(&peer_lock);
        goto close_fake_0;
    }
    struct fd *sock1 = FUNC3(fake_sockets[0]);
    struct fd *sock2 = FUNC3(fake_sockets[1]);
    sock1->socket.unix_peer = sock2;
    sock2->socket.unix_peer = sock1;
    FUNC10(&peer_lock);

    err = _EFAULT;
    if (FUNC11(sockets_addr, fake_sockets))
        goto close_fake_1;

    FUNC0(" [%d, %d]", fake_sockets[0], fake_sockets[1]);
    return 0;

close_fake_1:
    FUNC9(fake_sockets[1]);
close_fake_0:
    FUNC9(fake_sockets[0]);
close_sockets:
    FUNC1(sockets[0]);
    FUNC1(sockets[1]);
    return err;
}