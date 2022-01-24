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
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/ * PyMODINIT_FUNC ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CHECK_INTERVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ReaperType ; 
 int /*<<< orphan*/  creaper ; 
 int /*<<< orphan*/ * default_check_interval ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  protocol_capi ; 

PyMODINIT_FUNC
FUNC7(void)
{
  PyObject* m = NULL;
  default_check_interval = NULL;

  if (FUNC3(&ReaperType) < 0)
    goto error;

  m = FUNC2(&creaper);
  if(!m)
    goto error;

  FUNC4(&ReaperType);
  FUNC1(m, "Reaper", (PyObject*)&ReaperType);

  if(!(default_check_interval = FUNC0(DEFAULT_CHECK_INTERVAL)))
    goto error;

  protocol_capi = FUNC6("japronto.protocol.cprotocol");
  if(!protocol_capi)
    goto error;

  goto finally;

  error:
  FUNC5(default_check_interval);
  m = NULL;

  finally:
  return m;
}