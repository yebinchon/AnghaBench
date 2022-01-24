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
struct user_regs_struct {int rsp; int rax; int rbx; int rcx; scalar_t__ rdx; } ;
struct msghdr {char* msg_control; int msg_controllen; } ;
struct cmsghdr {int /*<<< orphan*/  cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;
typedef  int /*<<< orphan*/  sent_fd ;
typedef  int /*<<< orphan*/  msg_bak ;
typedef  int /*<<< orphan*/  msg32 ;
typedef  int /*<<< orphan*/  cmsg_bak ;
typedef  int /*<<< orphan*/  cmsg ;
typedef  int addr_t ;
struct TYPE_2__ {int real_fd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SCM_RIGHTS ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct user_regs_struct*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct user_regs_struct*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC15(int pid, int sender, int receiver, int fake_fd) {
    // this sends the fd over a unix domain socket. yes, I'm crazy

    // sending part
    int real_fd = FUNC5(fake_fd)->real_fd;
    struct msghdr msg = {};
    char cmsg[FUNC3(sizeof(int))];
    FUNC7(cmsg, 0, sizeof(cmsg));

    msg.msg_control = cmsg;
    msg.msg_controllen = sizeof(cmsg);

    struct cmsghdr *cmsg_hdr = FUNC1(&msg);
    cmsg_hdr->cmsg_level = SOL_SOCKET;
    cmsg_hdr->cmsg_type = SCM_RIGHTS;
    cmsg_hdr->cmsg_len = FUNC2(sizeof(int));
    *(int *) FUNC0(cmsg_hdr) = real_fd;

    FUNC14(FUNC11(sender, &msg, 0), "sendmsg insanity");

    // receiving part
    // painful, because we're 64-bit and the child is 32-bit and I want to kill myself
    struct user_regs_struct saved_regs;
    FUNC6(pid, &saved_regs);
    struct user_regs_struct regs = saved_regs;

    // reserve space for 32-bit version of cmsg
    regs.rsp -= 16; // according to my calculations
    addr_t cmsg_addr = regs.rsp;
    char cmsg_bak[16];
    FUNC9(pid, regs.rsp, cmsg_bak, sizeof(cmsg_bak));

    // copy 32-bit msghdr
    regs.rsp -= 32;
    int msg32[] = {0, 0, 0, 0, cmsg_addr, 20, 0};
    addr_t msg_addr = regs.rsp;
    char msg_bak[32];
    FUNC9(pid, regs.rsp, msg_bak, sizeof(msg_bak));
    FUNC10(pid, regs.rsp, &msg32, sizeof(msg32));

    regs.rax = 372;
    regs.rbx = receiver;
    regs.rcx = msg_addr;
    regs.rdx = 0;
    // assume we're already on an int $0x80
    FUNC12(pid, &regs);
    FUNC13(pid);
    FUNC6(pid, &regs);

    int sent_fd;
    if ((long) regs.rax >= 0)
        FUNC9(pid, cmsg_addr + 12, &sent_fd, sizeof(sent_fd));
    else
        sent_fd = regs.rax;

    // restore crap
    FUNC10(pid, cmsg_addr, cmsg_bak, sizeof(cmsg_bak));
    FUNC10(pid, msg_addr, msg_bak, sizeof(msg_bak));
    FUNC12(pid, &regs);

    if (sent_fd < 0) {
        errno = -sent_fd;
        FUNC8("remote recvmsg insanity");
        FUNC4(1);
    }

    return sent_fd;
}