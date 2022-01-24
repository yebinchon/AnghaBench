#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_fs_cb ;
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;
struct TYPE_7__ {scalar_t__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int FUNC2 (int) ; 
 TYPE_1__ close_req ; 
 int /*<<< orphan*/  loop ; 
 int FUNC3 (char*,int,int) ; 
 TYPE_1__ open_req1 ; 
 TYPE_1__ open_req2 ; 
 int sendfile_cb_count ; 
 int /*<<< orphan*/  sendfile_req ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(void (*setup)(int), uv_fs_cb cb, off_t expected_size) {
  int f, r;
  struct stat s1, s2;

  loop = FUNC6();

  /* Setup. */
  FUNC5("test_file");
  FUNC5("test_file2");

  f = FUNC3("test_file", O_WRONLY | O_CREAT, S_IWUSR | S_IRUSR);
  FUNC0(f != -1);

  if (setup != NULL)
    setup(f);

  r = FUNC2(f);
  FUNC0(r == 0);

  /* Test starts here. */
  r = FUNC8(NULL, &open_req1, "test_file", O_RDWR, 0, NULL);
  FUNC0(r >= 0);
  FUNC0(open_req1.result >= 0);
  FUNC9(&open_req1);

  r = FUNC8(NULL, &open_req2, "test_file2", O_WRONLY | O_CREAT,
      S_IWUSR | S_IRUSR, NULL);
  FUNC0(r >= 0);
  FUNC0(open_req2.result >= 0);
  FUNC9(&open_req2);

  r = FUNC10(loop, &sendfile_req, open_req2.result, open_req1.result,
      0, 131072, cb);
  FUNC0(r == 0);
  FUNC11(loop, UV_RUN_DEFAULT);

  FUNC0(sendfile_cb_count == 1);

  r = FUNC7(NULL, &close_req, open_req1.result, NULL);
  FUNC0(r == 0);
  FUNC9(&close_req);
  r = FUNC7(NULL, &close_req, open_req2.result, NULL);
  FUNC0(r == 0);
  FUNC9(&close_req);

  FUNC0(0 == FUNC4("test_file", &s1));
  FUNC0(0 == FUNC4("test_file2", &s2));
  FUNC0(s1.st_size == s2.st_size);
  FUNC0(s2.st_size == expected_size);

  /* Cleanup. */
  FUNC5("test_file");
  FUNC5("test_file2");

  FUNC1();
  return 0;
}