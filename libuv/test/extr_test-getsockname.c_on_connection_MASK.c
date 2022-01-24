#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  after_read ; 
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  connect_port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  getpeernamecount ; 
 int /*<<< orphan*/  getsocknamecount ; 
 int /*<<< orphan*/  loop ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  server_port ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,struct sockaddr*,int*) ; 
 int FUNC8 (TYPE_1__*,struct sockaddr*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(uv_stream_t* server, int status) {
  struct sockaddr sockname, peername;
  int namelen;
  uv_tcp_t* handle;
  int r;

  if (status != 0) {
    FUNC2(stderr, "Connect error %s\n", FUNC5(status));
  }
  FUNC0(status == 0);

  handle = FUNC3(sizeof(*handle));
  FUNC0(handle != NULL);

  r = FUNC9(loop, handle);
  FUNC0(r == 0);

  /* associate server with stream */
  handle->data = server;

  r = FUNC4(server, (uv_stream_t*)handle);
  FUNC0(r == 0);

  namelen = sizeof sockname;
  r = FUNC8(handle, &sockname, &namelen);
  FUNC0(r == 0);
  FUNC1(&sockname, "127.0.0.1", server_port, "accepted socket");
  getsocknamecount++;

  namelen = sizeof peername;
  r = FUNC7(handle, &peername, &namelen);
  FUNC0(r == 0);
  FUNC1(&peername, "127.0.0.1", connect_port, "accepted socket peer");
  getpeernamecount++;

  r = FUNC6((uv_stream_t*)handle, alloc, after_read);
  FUNC0(r == 0);
}