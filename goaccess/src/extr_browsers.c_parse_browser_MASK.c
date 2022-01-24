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

/* Variables and functions */
 int /*<<< orphan*/  BROWSER_TYPE_LEN ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char,char) ; 
 size_t FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC11 (char *match, char *type, int i, char ***hash)
{
  char *b = NULL, *ptr = NULL, *slh = NULL;
  size_t cnt = 0, space = 0;

  /* Check if there are spaces in the token string, that way strpbrk
   * does not stop at the first space within the token string */
  if ((cnt = FUNC2 (hash[i][0], ' ')) && (b = match)) {
    while (space++ < cnt && (b = FUNC5 (b, ' ')))
      b++;
  } else
    b = match;

  FUNC10 (type, hash[i][1], BROWSER_TYPE_LEN);
  /* Internet Explorer 11 */
  if (FUNC9 (match, "rv:11") && FUNC9 (match, "Trident/7.0")) {
    return FUNC0 ("MSIE/11.0");
  }
  /* Opera +15 uses OPR/# */
  if (FUNC9 (match, "OPR") != NULL && (slh = FUNC8 (match, '/'))) {
    return FUNC4 (slh);
  }
  /* Opera has the version number at the end */
  if (FUNC9 (match, "Opera") && (slh = FUNC8 (match, '/')) && match < slh) {
    FUNC3 (match + 5, slh, FUNC6 (slh) + 1);
  }
  /* IE Old */
  if (FUNC9 (match, "MSIE") != NULL) {
    if ((ptr = FUNC7 (match, ";)-")) != NULL)
      *ptr = '\0';
    match = FUNC1 (match, ' ', '/');
  }
  /* all others */
  else if ((ptr = FUNC7 (b, ";) ")) != NULL) {
    *ptr = '\0';
  }

  return FUNC0 (match);
}