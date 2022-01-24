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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 size_t FUNC1 (char const*) ; 
 char* FUNC2 (int) ; 

char *
FUNC3 (const char *str, int begin, int len)
{
  char *buffer;
  if (str == NULL)
    return NULL;
  if (begin < 0)
    begin = FUNC1 (str) + begin;
  if (begin < 0)
    begin = 0;
  if (len < 0)
    len = 0;
  if (((size_t) begin) > FUNC1 (str))
    begin = FUNC1 (str);
  if (((size_t) len) > FUNC1 (&str[begin]))
    len = FUNC1 (&str[begin]);
  if ((buffer = FUNC2 (len + 1)) == NULL)
    return NULL;
  FUNC0 (buffer, &(str[begin]), len);
  buffer[len] = '\0';

  return buffer;
}