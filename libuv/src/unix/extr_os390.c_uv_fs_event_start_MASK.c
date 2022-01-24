#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* path; int /*<<< orphan*/  rfis_rftok; int /*<<< orphan*/  cb; TYPE_1__* loop; } ;
typedef  TYPE_2__ uv_fs_event_t ;
typedef  int /*<<< orphan*/  uv_fs_event_cb ;
struct TYPE_12__ {int msg_queue; } ;
typedef  TYPE_3__ uv__os390_epoll ;
typedef  int /*<<< orphan*/  reg_struct ;
typedef  int /*<<< orphan*/  handle ;
struct TYPE_13__ {int __rfis_qid; int __rfis_type; TYPE_2__** __rfis_rftok; int /*<<< orphan*/  __rfis_utok; int /*<<< orphan*/  __rfis_cmd; } ;
typedef  TYPE_4__ _RFIS ;
struct TYPE_10__ {TYPE_3__* ep; } ;

/* Variables and functions */
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _IOCC_REGFILEINT ; 
 int /*<<< orphan*/  _RFIS_REG ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 char* FUNC6 (char const*) ; 

int FUNC7(uv_fs_event_t* handle, uv_fs_event_cb cb,
                      const char* filename, unsigned int flags) {
  uv__os390_epoll* ep;
  _RFIS reg_struct;
  char* path;
  int rc;

  if (FUNC5(handle))
    return UV_EINVAL;

  ep = handle->loop->ep;
  FUNC2(ep->msg_queue != -1);

  reg_struct.__rfis_cmd  = _RFIS_REG;
  reg_struct.__rfis_qid  = ep->msg_queue;
  reg_struct.__rfis_type = 1;
  FUNC3(reg_struct.__rfis_utok, &handle, sizeof(handle));

  path = FUNC6(filename);
  if (path == NULL)
    return UV_ENOMEM;

  rc = FUNC1(path, _IOCC_REGFILEINT, sizeof(reg_struct), &reg_struct);
  if (rc != 0)
    return FUNC0(errno);

  FUNC4(handle);
  handle->path = path;
  handle->cb = cb;
  FUNC3(handle->rfis_rftok, reg_struct.__rfis_rftok,
         sizeof(handle->rfis_rftok));

  return 0;
}