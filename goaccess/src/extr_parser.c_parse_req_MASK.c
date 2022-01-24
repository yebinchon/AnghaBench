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
typedef  int ptrdiff_t ;
struct TYPE_2__ {scalar_t__ append_protocol; scalar_t__ append_method; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 TYPE_1__ conf ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (int) ; 
 char* FUNC10 (char const*) ; 

__attribute__((used)) static char *
FUNC11 (char *line, char **method, char **protocol)
{
  char *req = NULL, *request = NULL, *dreq = NULL, *ptr = NULL;
  const char *meth, *proto;
  ptrdiff_t rlen;

  meth = FUNC2 (line);

  /* couldn't find a method, so use the whole request line */
  if (meth == NULL) {
    request = FUNC10 (line);
  }
  /* method found, attempt to parse request */
  else {
    req = line + FUNC5 (meth);
    if (!(ptr = FUNC7 (req, ' ')) || !(proto = FUNC3 (++ptr)))
      return FUNC0 ("-");

    req++;
    if ((rlen = ptr - req) <= 0)
      return FUNC0 ("-");

    request = FUNC9 (rlen + 1);
    FUNC6 (request, req, rlen);
    request[rlen] = 0;

    if (conf.append_method)
      (*method) = FUNC8 (FUNC10 (meth));

    if (conf.append_protocol)
      (*protocol) = FUNC8 (FUNC10 (proto));
  }

  if (!(dreq = FUNC1 (request)))
    return request;
  else if (*dreq == '\0') {
    FUNC4 (dreq);
    return request;
  }

  FUNC4 (request);
  return dreq;
}