#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 TYPE_1__ close_req ; 
 int /*<<< orphan*/  iov ; 
 int /*<<< orphan*/  loop ; 
 TYPE_1__ open_req1 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 TYPE_1__ write_req ; 

__attribute__((used)) static void FUNC8(int add_flags) {
  int r;

  /* Setup. */
  FUNC1("test_file");

  loop = FUNC3();

  r = FUNC5(NULL, &open_req1, "test_file",
      O_WRONLY | O_CREAT | add_flags, S_IWUSR | S_IRUSR, NULL);
  FUNC0(r >= 0);
  FUNC0(open_req1.result >= 0);
  FUNC6(&open_req1);

  iov = FUNC2(NULL, 0);
  r = FUNC7(NULL, &write_req, open_req1.result, &iov, 1, -1, NULL);
  FUNC0(r == 0);
  FUNC0(write_req.result == 0);
  FUNC6(&write_req);

  r = FUNC4(NULL, &close_req, open_req1.result, NULL);
  FUNC0(r == 0);
  FUNC0(close_req.result == 0);
  FUNC6(&close_req);

  FUNC1("test_file");
}