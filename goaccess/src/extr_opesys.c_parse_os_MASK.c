#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ real_os; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPESYS_TYPE_LEN ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ conf ; 
 int FUNC1 (char const*,char) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char const*** os ; 
 char* FUNC5 (char*) ; 
 char const* FUNC6 (char*,int) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* FUNC9 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char*) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC13 (const char *str, char *tkn, char *os_type, int idx)
{
  char *b;
  int spaces = 0;

  FUNC12 (os_type, os[idx][1], OPESYS_TYPE_LEN);
  /* Windows */
  if ((FUNC10 (str, "Windows")) != NULL)
    return conf.real_os && (b = FUNC4 (tkn)) ? b : FUNC11 (os[idx][0]);
  /* Android */
  if ((FUNC10 (tkn, "Android")) != NULL) {
    tkn = FUNC5 (tkn);
    return conf.real_os ? FUNC2 (tkn) : FUNC11 (tkn);
  }
  /* iOS */
  if (FUNC10 (tkn, "iPad") || FUNC10 (tkn, "iPod"))
    return FUNC11 (FUNC6 (tkn, 4));
  if (FUNC10 (tkn, "iPhone"))
    return FUNC11 (FUNC6 (tkn, 6));
  /* Mac OS X */
  if ((FUNC10 (tkn, "OS X")) != NULL) {
    tkn = FUNC7 (tkn);
    return conf.real_os ? FUNC3 (tkn) : FUNC11 (tkn);
  }
  /* Darwin - capture the first part of agents such as:
   * Slack/248000 CFNetwork/808.0.2 Darwin/16.0.0 */
  if ((FUNC10 (tkn, "Darwin")) != NULL) {
    if ((b = FUNC9 (str, ' ')))
      *b = 0;
    return FUNC11 (str);
  }
  /* all others */
  spaces = FUNC1 (os[idx][0], ' ');

  return FUNC0 (FUNC8 (tkn, spaces));
}