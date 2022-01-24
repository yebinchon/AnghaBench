#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* tp_free ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  prev_buffer; } ;
struct TYPE_7__ {int /*<<< orphan*/  parser; int /*<<< orphan*/  feed; int /*<<< orphan*/  feed_disconnect; int /*<<< orphan*/  pipeline; int /*<<< orphan*/  static_request; int /*<<< orphan*/  app; int /*<<< orphan*/  matcher; int /*<<< orphan*/  error_handler; int /*<<< orphan*/  transport; int /*<<< orphan*/  writelines; int /*<<< orphan*/  write; int /*<<< orphan*/  create_task; int /*<<< orphan*/  request_logger; TYPE_1__ gather; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ Protocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(Protocol* self)
{
  FUNC3(self->gather.prev_buffer);
  FUNC3(self->request_logger);
  FUNC3(self->create_task);
  FUNC3(self->write);
  FUNC3(self->writelines);
  FUNC3(self->transport);
  FUNC3(self->error_handler);
  FUNC3(self->matcher);
  FUNC3(self->app);
  FUNC4(&self->static_request);
  FUNC1(&self->pipeline);
#ifdef PARSER_STANDALONE
  Py_XDECREF(self->feed_disconnect);
  Py_XDECREF(self->feed);
#else
  FUNC0(&self->parser);
#endif

  FUNC2(self)->tp_free((PyObject*)self);
}