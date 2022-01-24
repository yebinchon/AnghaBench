#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int fd_out; int offset; TYPE_2__* bufsml; } ;
struct TYPE_11__ {TYPE_3__ info; } ;
struct TYPE_8__ {int fd; } ;
struct TYPE_12__ {TYPE_4__ fs; TYPE_1__ file; } ;
typedef  TYPE_5__ uv_fs_t ;
typedef  int int64_t ;
struct TYPE_9__ {size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,size_t) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(uv_fs_t* req) {
  int fd_in = req->file.fd, fd_out = req->fs.info.fd_out;
  size_t length = req->fs.info.bufsml[0].len;
  int64_t offset = req->fs.info.offset;
  const size_t max_buf_size = 65536;
  size_t buf_size = length < max_buf_size ? length : max_buf_size;
  int n, result = 0;
  int64_t result_offset = 0;
  char* buf = (char*) FUNC5(buf_size);
  if (!buf) {
    FUNC6(ERROR_OUTOFMEMORY, "uv__malloc");
  }

  if (offset != -1) {
    result_offset = FUNC1(fd_in, offset, SEEK_SET);
  }

  if (result_offset == -1) {
    result = -1;
  } else {
    while (length > 0) {
      n = FUNC2(fd_in, buf, length < buf_size ? length : buf_size);
      if (n == 0) {
        break;
      } else if (n == -1) {
        result = -1;
        break;
      }

      length -= n;

      n = FUNC3(fd_out, buf, n);
      if (n == -1) {
        result = -1;
        break;
      }

      result += n;
    }
  }

  FUNC4(buf);

  FUNC0(req, result);
}