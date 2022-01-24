#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ io_watcher; } ;
typedef  TYPE_2__ uv_udp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_3__ uv_handle_t ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int UV_EINVAL ; 
 int UV_ENOTSUP ; 
 scalar_t__ UV_NAMED_PIPE ; 
 scalar_t__ UV_TCP ; 
 scalar_t__ UV_UDP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int,int*,int*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,void const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(uv_handle_t* handle, int optname, int* value) {
  int r;
  int fd;
  socklen_t len;

  if (handle == NULL || value == NULL)
    return UV_EINVAL;

  if (handle->type == UV_TCP || handle->type == UV_NAMED_PIPE)
    fd = FUNC3((uv_stream_t*) handle);
  else if (handle->type == UV_UDP)
    fd = ((uv_udp_t *) handle)->io_watcher.fd;
  else
    return UV_ENOTSUP;

  len = sizeof(*value);

  if (*value == 0)
    r = FUNC1(fd, SOL_SOCKET, optname, value, &len);
  else
    r = FUNC2(fd, SOL_SOCKET, optname, (const void*) value, len);

  if (r < 0)
    return FUNC0(errno);

  return 0;
}