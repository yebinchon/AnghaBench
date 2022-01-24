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
struct forth_request {int size; scalar_t__ timeout; scalar_t__* prog; } ;
struct forth_output {long long const prog_id; int l; scalar_t__ working_time; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 struct forth_output* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MAX_SHARED_MEMORY_SIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int all_results_memory ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  forth_output_errors ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  last_mmap_errno ; 
 scalar_t__* FUNC2 (int) ; 
 scalar_t__ max_task_time ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmap_errors ; 
 int /*<<< orphan*/  FUNC5 (struct forth_output*,int /*<<< orphan*/ ) ; 
 scalar_t__ now ; 
 scalar_t__ result_living_time ; 
 scalar_t__* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

__attribute__((used)) static void FUNC8 (const long long prog_id, int shm_descriptor, struct forth_request *E) {
  if (shm_descriptor < 0) { return; }
  struct forth_output *S = (struct forth_output *) FUNC4 (NULL, MAX_SHARED_MEMORY_SIZE, PROT_READ, MAP_SHARED, shm_descriptor, 0);
  if (S == MAP_FAILED) {
    last_mmap_errno = errno;
    S = NULL;
    FUNC7 (1, "copy_shared_memory_output, mmap failed\n%m\n");
    mmap_errors++;
  }
  if (S != NULL) {
    if (S->prog_id != prog_id || (S->l < 0 || S->l > (int) sizeof (S->s))) {
      forth_output_errors++;
      E->size = 0;
      E->prog = FUNC6 ("");
      FUNC0 (E->prog);
    } else {
      if (max_task_time < S->working_time) {
        max_task_time = S->working_time;
      }
      E->size = S->l;
      E->prog = FUNC2 (E->size + 1);
      FUNC0 (E->prog);
      FUNC3 (E->prog, S->s, E->size);
      E->prog[E->size] = 0;
    }
    E->timeout = now + result_living_time;
    FUNC5 (S, MAX_SHARED_MEMORY_SIZE);
    all_results_memory += E->size + 1;
    FUNC1 ();
  }
}