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
struct TYPE_3__ {int /*<<< orphan*/ * route; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ MatcherEntry ;
typedef  int /*<<< orphan*/  Matcher ;
typedef  int /*<<< orphan*/  MatchDictEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject*
FUNC6(Matcher* self, PyObject* request)
{
  MatcherEntry* matcher_entry;
  MatchDictEntry* entries;
  PyObject* route = NULL;
  size_t length;
  PyObject* match_dict = NULL;
  PyObject* route_dict = NULL;

  if(!(matcher_entry = FUNC1(
       self, request, &entries, &length)))
    Py_RETURN_NONE;

  route = matcher_entry->route;

  if(!(match_dict = FUNC0(entries, length)))
    goto error;

  if(!(route_dict = FUNC2(2)))
    goto error;

  FUNC3(route_dict, 0, route);
  FUNC3(route_dict, 1, match_dict);

  goto finally;

  error:
  FUNC5(match_dict);
  route = NULL;

  finally:
  if(route)
    FUNC4(route);
  return route_dict;
}