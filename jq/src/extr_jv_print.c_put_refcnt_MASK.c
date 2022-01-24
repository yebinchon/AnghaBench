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
struct dtoa_context {int dummy; } ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int JVP_DTOA_FMT_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct dtoa_context*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct dtoa_context* C, int refcnt, FILE *F, jv* S, int T){
  char buf[JVP_DTOA_FMT_MAX_LEN];
  FUNC1(' ', F, S, T);
  FUNC1('(', F, S, T);
  FUNC2(FUNC0(C, buf, refcnt), F, S, T);
  FUNC1(')', F, S, T);
}