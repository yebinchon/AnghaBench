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
typedef  int /*<<< orphan*/  uv_fs_t ;
typedef  int uv_file ;
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const char* name, unsigned int size) {
  uv_file file;
  uv_fs_t req;
  uv_buf_t buf;
  int r;
  unsigned int i;

  r = FUNC3(NULL, &req, name, O_WRONLY | O_CREAT | O_TRUNC,
                 S_IWUSR | S_IRUSR, NULL);
  FUNC4(&req);
  FUNC0(r >= 0);
  file = r;

  buf = FUNC1("a", 1);

  /* Inefficient but simple. */
  for (i = 0; i < size; i++) {
    r = FUNC5(NULL, &req, file, &buf, 1, i, NULL);
    FUNC4(&req);
    FUNC0(r >= 0);
  }

  r = FUNC2(NULL, &req, file, NULL);
  FUNC4(&req);
  FUNC0(r == 0);
}