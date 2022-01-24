#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ append_protocol; scalar_t__ append_method; } ;
struct TYPE_4__ {int /*<<< orphan*/  protocol; int /*<<< orphan*/  method; int /*<<< orphan*/  req; } ;
typedef  TYPE_1__ GLogItem ;

/* Variables and functions */
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (size_t,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC4 (GLogItem * logitem)
{
  char *key = NULL;
  size_t s1 = 0, s2 = 0, s3 = 0, nul = 1, sep = 0;

  /* nothing to do */
  if (!conf.append_method && !conf.append_protocol)
    return FUNC3 (logitem->req);
  /* still nothing to do */
  if (!logitem->method && !logitem->protocol)
    return FUNC3 (logitem->req);

  s1 = FUNC1 (logitem->req);
  if (logitem->method && conf.append_method) {
    s2 = FUNC1 (logitem->method);
    nul++;
  }
  if (logitem->protocol && conf.append_protocol) {
    s3 = FUNC1 (logitem->protocol);
    nul++;
  }

  /* includes terminating null */
  key = FUNC2 (s1 + s2 + s3 + nul, sizeof (char));
  /* append request */
  FUNC0 (key, logitem->req, s1);

  if (logitem->method && conf.append_method) {
    key[s1] = '|';
    sep++;
    FUNC0 (key + s1 + sep, logitem->method, s2 + 1);
  }
  if (logitem->protocol && conf.append_protocol) {
    key[s1 + s2 + sep] = '|';
    sep++;
    FUNC0 (key + s1 + s2 + sep, logitem->protocol, s3 + 1);
  }

  return key;
}