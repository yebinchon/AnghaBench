#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int accepted_fd; } ;
typedef  TYPE_1__ uv_stream_t ;
struct msghdr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_type; int cmsg_len; } ;

/* Variables and functions */
 void* FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 int FUNC2 (unsigned int) ; 
 struct cmsghdr* FUNC3 (struct msghdr*,struct cmsghdr*) ; 
 scalar_t__ SCM_RIGHTS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC8(uv_stream_t* stream, struct msghdr* msg) {
  struct cmsghdr* cmsg;

  for (cmsg = FUNC1(msg); cmsg != NULL; cmsg = FUNC3(msg, cmsg)) {
    char* start;
    char* end;
    int err;
    void* pv;
    int* pi;
    unsigned int i;
    unsigned int count;

    if (cmsg->cmsg_type != SCM_RIGHTS) {
      FUNC5(stderr, "ignoring non-SCM_RIGHTS ancillary data: %ld\n",
          cmsg->cmsg_type);
      continue;
    }

    /* silence aliasing warning */
    pv = FUNC0(cmsg);
    pi = pv;

    /* Count available fds */
    start = (char*) cmsg;
    end = (char*) cmsg + cmsg->cmsg_len;
    count = 0;
    while (start + FUNC2(count * sizeof(*pi)) < end)
      count++;
    FUNC4(start + FUNC2(count * sizeof(*pi)) == end);

    for (i = 0; i < count; i++) {
      /* Already has accepted fd, queue now */
      if (stream->accepted_fd != -1) {
        err = FUNC7(stream, pi[i]);
        if (err != 0) {
          /* Close rest */
          for (; i < count; i++)
            FUNC6(pi[i]);
          return err;
        }
      } else {
        stream->accepted_fd = pi[i];
      }
    }
  }

  return 0;
}