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
 int REF_SITE_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6 (const char *referer, char *host)
{
  char *url, *begin, *end;
  int len = 0;

  if ((referer == NULL) || (*referer == '\0'))
    return 1;

  url = FUNC3 (referer);
  if ((begin = FUNC5 (url, "//")) == NULL)
    goto clean;

  begin += 2;
  if ((len = FUNC4 (begin)) == 0)
    goto clean;

  if ((end = FUNC2 (begin, '/')) != NULL)
    len = end - begin;

  if (len == 0)
    goto clean;

  if (len >= REF_SITE_LEN)
    len = REF_SITE_LEN;

  FUNC1 (host, begin, len);
  host[len] = '\0';
  FUNC0 (url);
  return 0;
clean:
  FUNC0 (url);

  return 1;
}