
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* tp_free ) (int *) ;} ;
struct TYPE_6__ {int prev_buffer; } ;
struct TYPE_7__ {int parser; int feed; int feed_disconnect; int pipeline; int static_request; int app; int matcher; int error_handler; int transport; int writelines; int write; int create_task; int request_logger; TYPE_1__ gather; } ;
typedef int PyObject ;
typedef TYPE_2__ Protocol ;


 int Parser_dealloc (int *) ;
 int Pipeline_dealloc (int *) ;
 TYPE_3__* Py_TYPE (TYPE_2__*) ;
 int Py_XDECREF (int ) ;
 int Request_dealloc (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void
Protocol_dealloc(Protocol* self)
{
  Py_XDECREF(self->gather.prev_buffer);
  Py_XDECREF(self->request_logger);
  Py_XDECREF(self->create_task);
  Py_XDECREF(self->write);
  Py_XDECREF(self->writelines);
  Py_XDECREF(self->transport);
  Py_XDECREF(self->error_handler);
  Py_XDECREF(self->matcher);
  Py_XDECREF(self->app);
  Request_dealloc(&self->static_request);
  Pipeline_dealloc(&self->pipeline);




  Parser_dealloc(&self->parser);


  Py_TYPE(self)->tp_free((PyObject*)self);
}
