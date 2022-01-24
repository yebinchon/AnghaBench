#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  context; TYPE_1__* env_c_api; } ;
struct TYPE_3__ {int (* list_property ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ LabObject ;

/* Variables and functions */
#define  EnvCApi_PropertyResult_InvalidArgument 131 
#define  EnvCApi_PropertyResult_NotFound 130 
#define  EnvCApi_PropertyResult_PermissionDenied 129 
#define  EnvCApi_PropertyResult_Success 128 
 int /*<<< orphan*/  PropertyCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,char**) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject* FUNC5(PyObject* pself, PyObject* args,
                                PyObject* kwds) {
  LabObject* self = (LabObject*)pself;
  char* key = "";
  char* kwlist[] = {"key", NULL};
  if (!FUNC0(args, kwds, "|s", kwlist, &key)) {
    return NULL;
  }
  PyObject* dictionary = FUNC1();
  if (dictionary == NULL) {
    FUNC3();
    return NULL;
  }
  switch (self->env_c_api->list_property(self->context, dictionary, key,
                                         PropertyCallback)) {
    case EnvCApi_PropertyResult_Success:
      return dictionary;
    case EnvCApi_PropertyResult_PermissionDenied:
      FUNC2(PyExc_TypeError, "'%s' not listable.", key);
      break;
    case EnvCApi_PropertyResult_InvalidArgument:
      FUNC2(PyExc_TypeError, "Internal error while listing key '%s'.",
                   key);
      break;
    case EnvCApi_PropertyResult_NotFound:
    default:
      FUNC2(PyExc_KeyError, "'%s' not found.", key);
      break;
  }
  return NULL;
}