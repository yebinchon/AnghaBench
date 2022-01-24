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
struct TYPE_3__ {int /*<<< orphan*/  value_length; int /*<<< orphan*/  value; int /*<<< orphan*/  key_length; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ MatchDictEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

PyObject*
FUNC4(MatchDictEntry* entries, size_t length)
{
  PyObject* match_dict = NULL;
  if(!(match_dict = FUNC0()))
    goto error;

  for(MatchDictEntry* entry = entries; entry < entries + length; entry++) {
    PyObject* key = NULL;
    PyObject* value = NULL;

    if(!(key = FUNC2(entry->key, entry->key_length)))
      goto loop_error;

    if(!(value = FUNC2(entry->value, entry->value_length)))
      goto loop_error;

    if(FUNC1(match_dict, key, value) == -1)
      goto loop_error;

    goto loop_finally;

    loop_error:
    FUNC3(match_dict);
    match_dict = NULL;

    loop_finally:
    FUNC3(key);
    FUNC3(value);
    if(!match_dict)
      goto error;
  }

  goto finally;

  error:
  FUNC3(match_dict);
  match_dict = NULL;

  finally:
  return match_dict;
}