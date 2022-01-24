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
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ read_sockets ; 
 scalar_t__ server ; 
 int start_time ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_handle_t* handle) {
  FUNC0(handle);
  read_sockets--;

  /* If it's past the first second and everyone has closed their connection
   * Then print stats.
   */
  if (FUNC3(loop) - start_time > 1000 && read_sockets == 0) {
    FUNC1();
    FUNC2((uv_handle_t*)server, NULL);
  }
}