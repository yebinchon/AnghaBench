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
struct locfile {int dummy; } ;
struct lexer_param {int dummy; } ;
typedef  int /*<<< orphan*/  block ;
typedef  int /*<<< orphan*/  YYLTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct locfile*,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

void FUNC2(YYLTYPE* loc, block* answer, int* errors,
             struct locfile* locations, struct lexer_param* lexer_param_ptr, const char *s){
  (*errors)++;
  if (FUNC1(s, "unexpected")) {
#ifdef WIN32
      locfile_locate(locations, *loc, "jq: error: %s (Windows cmd shell quoting issues?)", s);
#else
      FUNC0(locations, *loc, "jq: error: %s (Unix shell quoting issues?)", s);
#endif
  } else {
      FUNC0(locations, *loc, "jq: error: %s", s);
  }
}