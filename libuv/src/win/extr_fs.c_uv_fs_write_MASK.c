#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_loop_t ;
struct TYPE_7__ {unsigned int nbufs; int /*<<< orphan*/  offset; int /*<<< orphan*/ * bufs; int /*<<< orphan*/ * bufsml; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;
struct TYPE_9__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef  TYPE_4__ uv_fs_t ;
typedef  int /*<<< orphan*/  uv_fs_cb ;
typedef  int /*<<< orphan*/  uv_file ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POST ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int /*<<< orphan*/  UV_FS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int) ; 

int FUNC4(uv_loop_t* loop,
                uv_fs_t* req,
                uv_file fd,
                const uv_buf_t bufs[],
                unsigned int nbufs,
                int64_t offset,
                uv_fs_cb cb) {
  FUNC1(UV_FS_WRITE);

  if (bufs == NULL || nbufs == 0)
    return UV_EINVAL;

  req->file.fd = fd;

  req->fs.info.nbufs = nbufs;
  req->fs.info.bufs = req->fs.info.bufsml;
  if (nbufs > FUNC0(req->fs.info.bufsml))
    req->fs.info.bufs = FUNC3(nbufs * sizeof(*bufs));

  if (req->fs.info.bufs == NULL)
    return UV_ENOMEM;

  FUNC2(req->fs.info.bufs, bufs, nbufs * sizeof(*bufs));

  req->fs.info.offset = offset;
  POST;
}