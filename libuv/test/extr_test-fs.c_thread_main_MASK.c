#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct thread_ctx {int size; char* data; int interval; int /*<<< orphan*/  pid; int /*<<< orphan*/  fd; scalar_t__ doread; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(void* arg) {
  const struct thread_ctx* ctx;
  int size;
  char* data;

  ctx = (struct thread_ctx*)arg;
  size = ctx->size;
  data = ctx->data;

  while (size > 0) {
    ssize_t result;
    int nbytes;
    nbytes = size < ctx->interval ? size : ctx->interval;
    if (ctx->doread) {
      result = FUNC3(ctx->fd, data, nbytes);
      /* Should not see EINTR (or other errors) */
      FUNC0(result == nbytes);
    } else {
      result = FUNC2(ctx->fd, data, nbytes);
      /* Should not see EINTR (or other errors),
       * but might get a partial read if we are faster than the writer
       */
      FUNC0(result > 0 && result <= nbytes);
    }

    FUNC1(ctx->pid, SIGUSR1);
    size -= result;
    data += result;
  }
}