
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int RequestType; } ;
struct TYPE_7__ {int * prev_buffer; } ;
struct TYPE_9__ {TYPE_1__ gather; int * request_logger; int * create_task; int * write; int * transport; int * error_handler; int * matcher; int * app; int static_request; int pipeline; int parser; int * feed_disconnect; int * feed; } ;
struct TYPE_8__ {scalar_t__ (* tp_alloc ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ PyTypeObject ;
typedef int PyObject ;
typedef TYPE_3__ Protocol ;


 int Parser_new (int *) ;
 int Pipeline_new (int *) ;
 int Request_new (int ,int *) ;
 TYPE_5__* request_capi ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static PyObject *
Protocol_new(PyTypeObject *type, PyObject *args, PyObject *kwds)
{
  Protocol* self = ((void*)0);

  self = (Protocol*)type->tp_alloc(type, 0);
  if(!self)
    goto finally;





  Parser_new(&self->parser);

  Pipeline_new(&self->pipeline);
  Request_new(request_capi->RequestType, &self->static_request);
  self->app = ((void*)0);
  self->matcher = ((void*)0);
  self->error_handler = ((void*)0);
  self->transport = ((void*)0);
  self->write = ((void*)0);
  self->create_task = ((void*)0);
  self->request_logger = ((void*)0);

  self->gather.prev_buffer = ((void*)0);

  finally:
  return (PyObject*)self;
}
