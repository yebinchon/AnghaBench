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
struct counter {int created_at; struct counter* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long long,int) ; 
 struct counter counter_wait ; 
 int /*<<< orphan*/  FUNC1 (struct counter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long long,int,int) ; 
 struct counter* FUNC3 (long long,int /*<<< orphan*/ ) ; 
 int FUNC4 (long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static struct counter *FUNC5 (long long cnt_id, int created_at, int use_aio) {
  if (verbosity >= 3) {
    FUNC2 (stderr, "get_counter_old (%lld, %d, %d)\n", cnt_id, created_at, use_aio);
  }

  if (use_aio > 0) {
    if (!FUNC0 (cnt_id, created_at)) { return 0; }
    
    struct counter *D = FUNC5 (cnt_id, created_at, -1);
    if (D) { return D;}

  }


  struct counter *C = FUNC3 (cnt_id, 0);
  if (!C) { return C;}
  if (use_aio >= 0) {
    int res = FUNC4 (cnt_id, 0, use_aio);
    if (res == -1 && !C) {
      return 0;
    }
    if (res == -2) {
      return &counter_wait;
    }
  }
  if (!created_at) {
    FUNC1 (C);
    return C;
  }


  while (C) {
    if (C->created_at < created_at) { 
      //if (use_aio) {
      //  assert (0);
      //}
      return 0; 
    }
    if (C->created_at == created_at) { break; }
    C = C->prev;
  }

  //if (use_aio == 1) {
  //  assert (C);
  //}

  if (C) { FUNC1 (C); }
  return C;
}