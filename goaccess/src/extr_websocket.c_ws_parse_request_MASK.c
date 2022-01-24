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
typedef  int ptrdiff_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static char *
FUNC7 (char *line, char **method, char **protocol)
{
  const char *meth;
  char *req = NULL, *request = NULL, *proto = NULL;
  ptrdiff_t rlen;

  if ((meth = FUNC4 (line)) == NULL) {
    return NULL;
  } else {
    req = line + FUNC0 (meth);
    if ((proto = FUNC2 (line, " HTTP/1.0")) == NULL &&
        (proto = FUNC2 (line, " HTTP/1.1")) == NULL)
      return NULL;

    req++;
    if ((rlen = proto - req) <= 0)
      return NULL;

    request = FUNC5 (rlen + 1);
    FUNC1 (request, req, rlen);
    request[rlen] = 0;

    (*method) = FUNC3 (FUNC6 (meth));
    (*protocol) = FUNC3 (FUNC6 (++proto));
  }

  return request;
}