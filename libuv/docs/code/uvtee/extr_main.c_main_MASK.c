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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_fs_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  alloc_buffer ; 
 int /*<<< orphan*/  file_pipe ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  read_stdin ; 
 int /*<<< orphan*/  stdin_pipe ; 
 int /*<<< orphan*/  stdout_pipe ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(int argc, char **argv) {
    loop = FUNC0();

    FUNC2(loop, &stdin_pipe, 0);
    FUNC3(&stdin_pipe, 0);

    FUNC2(loop, &stdout_pipe, 0);
    FUNC3(&stdout_pipe, 1);
    
    uv_fs_t file_req;
    int fd = FUNC1(loop, &file_req, argv[1], O_CREAT | O_RDWR, 0644, NULL);
    FUNC2(loop, &file_pipe, 0);
    FUNC3(&file_pipe, fd);

    FUNC4((uv_stream_t*)&stdin_pipe, alloc_buffer, read_stdin);

    FUNC5(loop, UV_RUN_DEFAULT);
    return 0;
}