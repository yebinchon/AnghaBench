
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int content_length; scalar_t__ transfer; int buffer_end; int buffer_start; char* buffer; size_t chunked_offset; int protocol; int on_error; int on_body; int request; int chunked_decoder; } ;
typedef int PyObject ;
typedef TYPE_1__ Parser ;


 int CONTENT_LENGTH_UNSET ;
 scalar_t__ PARSER_CHUNKED ;
 scalar_t__ PARSER_TRANSFER_UNSET ;
 int Protocol_on_body (int ,char*,size_t,int) ;
 int Protocol_on_error (int ,int *) ;
 int PyBUF_READ ;
 int * PyMemoryView_FromMemory (char*,size_t,int ) ;
 int * PyObject_CallFunctionObjArgs (int ,int *,int *) ;
 int PyObject_Print (char*,int ,int ) ;
 int PyObject_SetAttrString (int ,char*,char*) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int Py_XDECREF (int *) ;
 int _reset_state (TYPE_1__*,int) ;
 int * malformed_body ;
 int phr_decode_chunked (int *,char*,int*) ;
 int printf (char*) ;
 int stdout ;
 scalar_t__ zero_body ;

__attribute__((used)) static int _parse_body(Parser* self) {




  char* body = ((void*)0);
  size_t body_len = 0;
  int result = -2;
  if(self->content_length == CONTENT_LENGTH_UNSET
     && self->transfer == PARSER_TRANSFER_UNSET) {
    result = 0;
    goto on_body;
  }

  if(self->content_length == 0) {
    body = (char*)zero_body;
    result = 0;
    goto on_body;
  }

  if(self->content_length != CONTENT_LENGTH_UNSET) {
    if(self->content_length > self->buffer_end - self->buffer_start) {
      result = -2;
      goto finally;
    }

    body = self->buffer + self->buffer_start;
    body_len = self->content_length;

    self->buffer_start += self->content_length;


    result = 1;

    goto on_body;
  }

  if(self->transfer == PARSER_CHUNKED) {
    size_t chunked_offset_start = self->chunked_offset;
    self->chunked_offset = self->buffer_end - self->buffer_start - self->chunked_offset;
    result = phr_decode_chunked(
      &self->chunked_decoder,
      self->buffer + self->buffer_start + chunked_offset_start,
      &self->chunked_offset);
    self->chunked_offset = self->chunked_offset + chunked_offset_start;

    if(result == -2) {
      self->buffer_end = self->buffer_start + self->chunked_offset;
      goto finally;
    }

    if(result == -1)
      goto on_error;

    body = self->buffer + self->buffer_start;
    body_len = self->chunked_offset;

    self->buffer_start += self->chunked_offset;
    self->buffer_end = self->buffer_start + (size_t)result;

    goto on_body;
  }

  goto finally;

  on_body:

  if(body) {
  }
  if(!Protocol_on_body(self->protocol, body, body_len, self->buffer_end - self->buffer_start))
    goto error;


  _reset_state(self, 0);

  goto finally;
  on_error:
  if(!Protocol_on_error(self->protocol, malformed_body))
    goto error;


  _reset_state(self, 1);

  result = -1;

  goto finally;

  error:
  result = -3;

  finally:



  return result;
}
