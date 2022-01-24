#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct my_sm_struct {int dummy; } ;
typedef  TYPE_1__* sm_t ;
typedef  TYPE_2__* my_sm_t ;
typedef  int /*<<< orphan*/  WSADATA ;
struct TYPE_11__ {int port; } ;
struct TYPE_10__ {scalar_t__ (* select ) (TYPE_1__*,int) ;int /*<<< orphan*/  (* cleanup ) (TYPE_1__*) ;int /*<<< orphan*/  (* add_fd ) (TYPE_1__*,int,int /*<<< orphan*/ *,TYPE_2__*,int) ;int /*<<< orphan*/  on_close; int /*<<< orphan*/  on_recv; int /*<<< orphan*/  on_accept; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  on_accept ; 
 int /*<<< orphan*/  on_close ; 
 int /*<<< orphan*/  on_recv ; 
 int /*<<< orphan*/  on_signal ; 
 int /*<<< orphan*/  quit_flag ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int) ; 
 TYPE_1__* FUNC10 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

int FUNC14(int argc, char** argv) {
  FUNC7(SIGINT, on_signal);
  FUNC7(SIGTERM, on_signal);

#ifdef WIN32
  WSADATA wsa_data;
  int res = WSAStartup(MAKEWORD(2,2), &wsa_data);
  if (res) {
    fprintf(stderr, "WSAStartup failed with error: %d\n", res);
    exit(1);
  }
#endif

  int port = 8080;

  int s_fd = FUNC9(port);
  if (s_fd < 0) {
    return -1;
  }

  sm_t sm = FUNC10(4096);
  sm->on_accept = on_accept;
  sm->on_recv = on_recv;
  sm->on_close = on_close;

  my_sm_t my_sm = (my_sm_t)FUNC6(sizeof(struct my_sm_struct));
  my_sm->port = port;
  //sm->state = my_sm; // optional

  sm->add_fd(sm, s_fd, NULL, my_sm, true);

  int ret = 0;
  while (!quit_flag) {
    if (sm->select(sm, 2) < 0) {
      ret = -1;
      break;
    }
  }
  sm->cleanup(sm);
  FUNC5(my_sm);
  FUNC8(sm);
#ifdef WIN32
  WSACleanup();
#endif
  return ret;
}