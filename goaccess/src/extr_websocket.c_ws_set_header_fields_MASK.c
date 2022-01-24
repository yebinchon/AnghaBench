#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* path; char* method; char* protocol; } ;
typedef  TYPE_1__ WSHeaders ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 

__attribute__((used)) static int
FUNC6 (char *line, WSHeaders * headers)
{
  char *path = NULL, *method = NULL, *proto = NULL, *p, *value;

  if (line[0] == '\n' || line[0] == '\r')
    return 1;

  if ((FUNC3 (line, "GET ")) || (FUNC3 (line, "get "))) {
    if ((path = FUNC4 (line, &method, &proto)) == NULL)
      return 1;
    headers->path = path;
    headers->method = method;
    headers->protocol = proto;

    return 0;
  }

  if ((p = FUNC1 (line, ':')) == NULL)
    return 1;

  value = p + 1;
  while (p != line && FUNC0 ((unsigned char) *(p - 1)))
    p--;

  if (p == line)
    return 1;

  *p = '\0';
  if (FUNC2 (line, " \t") != NULL) {
    *p = ' ';
    return 1;
  }
  while (FUNC0 ((unsigned char) *value))
    value++;

  FUNC5 (headers, line, value);

  return 0;
}