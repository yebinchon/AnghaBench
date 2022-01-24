#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ base; } ;
typedef  TYPE_1__ uv_buf_t ;
struct TYPE_12__ {scalar_t__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_RDONLY ; 
 int UV_EINVAL ; 
 TYPE_2__ close_req ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int) ; 
 TYPE_2__ open_req1 ; 
 TYPE_2__ read_req ; 
 TYPE_1__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(int add_flags) {
  char scratch[768];
  uv_buf_t bufs[4];

  FUNC0(0 <= FUNC4(NULL, &open_req1,
                         "test/fixtures/lorem_ipsum.txt",
                         O_RDONLY | add_flags, 0, NULL));
  FUNC0(open_req1.result >= 0);
  FUNC6(&open_req1);

  FUNC0(UV_EINVAL == FUNC5(NULL, &read_req, open_req1.result,
                                 NULL, 0, 0, NULL));
  FUNC0(UV_EINVAL == FUNC5(NULL, &read_req, open_req1.result,
                                 NULL, 1, 0, NULL));
  FUNC0(UV_EINVAL == FUNC5(NULL, &read_req, open_req1.result,
                                 bufs, 0, 0, NULL));

  bufs[0] = FUNC2(scratch + 0, 256);
  bufs[1] = FUNC2(scratch + 256, 256);
  bufs[2] = FUNC2(scratch + 512, 128);
  bufs[3] = FUNC2(scratch + 640, 128);

  FUNC0(446 == FUNC5(NULL,
                           &read_req,
                           open_req1.result,
                           bufs + 0,
                           2,  /* 2x 256 bytes. */
                           0,  /* Positional read. */
                           NULL));
  FUNC0(read_req.result == 446);
  FUNC6(&read_req);

  FUNC0(190 == FUNC5(NULL,
                           &read_req,
                           open_req1.result,
                           bufs + 2,
                           2,  /* 2x 128 bytes. */
                           256,  /* Positional read. */
                           NULL));
  FUNC0(read_req.result == /* 446 - 256 */ 190);
  FUNC6(&read_req);

  FUNC0(0 == FUNC1(bufs[1].base + 0, bufs[2].base, 128));
  FUNC0(0 == FUNC1(bufs[1].base + 128, bufs[3].base, 190 - 128));

  FUNC0(0 == FUNC3(NULL, &close_req, open_req1.result, NULL));
  FUNC0(close_req.result == 0);
  FUNC6(&close_req);
}