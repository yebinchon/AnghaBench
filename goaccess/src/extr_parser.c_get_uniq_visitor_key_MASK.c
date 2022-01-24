#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* host; char* date; int /*<<< orphan*/  agent; } ;
typedef  TYPE_1__ GLogItem ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 size_t FUNC3 (char*) ; 
 char* FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC6 (GLogItem * logitem)
{
  char *ua = NULL, *key = NULL;
  size_t s1, s2, s3;

  ua = FUNC0 (FUNC5 (logitem->agent));

  s1 = FUNC3 (logitem->host);
  s2 = FUNC3 (logitem->date);
  s3 = FUNC3 (ua);

  /* includes terminating null */
  key = FUNC4 (s1 + s2 + s3 + 3, sizeof (char));

  FUNC2 (key, logitem->host, s1);

  key[s1] = '|';
  FUNC2 (key + s1 + 1, logitem->date, s2 + 1);

  key[s1 + s2 + 1] = '|';
  FUNC2 (key + s1 + s2 + 2, ua, s3 + 1);

  FUNC1 (ua);
  return key;
}