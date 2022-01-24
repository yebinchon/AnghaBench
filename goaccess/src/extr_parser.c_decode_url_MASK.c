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
struct TYPE_2__ {scalar_t__ double_decode; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4 (char *url)
{
  char *out, *decoded;

  if ((url == NULL) || (*url == '\0'))
    return NULL;

  out = decoded = FUNC3 (url);
  FUNC0 (url, out);
  /* double encoded URL? */
  if (conf.double_decode)
    FUNC0 (decoded, out);
  FUNC1 (out);

  return FUNC2 (out);
}