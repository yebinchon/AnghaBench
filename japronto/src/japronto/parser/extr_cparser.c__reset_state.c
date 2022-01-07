
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct phr_chunked_decoder {int dummy; } ;
struct TYPE_5__ {int consume_trailer; } ;
struct TYPE_4__ {scalar_t__ buffer_end; scalar_t__ buffer_start; int connection; scalar_t__ chunked_offset; TYPE_2__ chunked_decoder; int content_length; int transfer; int state; } ;
typedef TYPE_1__ Parser ;


 int CONTENT_LENGTH_UNSET ;
 int PARSER_CONNECTION_UNSET ;
 int PARSER_HEADERS ;
 int PARSER_TRANSFER_UNSET ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void _reset_state(Parser* self, bool disconnect) {
    self->state = PARSER_HEADERS;
    self->transfer = PARSER_TRANSFER_UNSET;
    self->content_length = CONTENT_LENGTH_UNSET;
    memset(&self->chunked_decoder, 0, sizeof(struct phr_chunked_decoder));
    self->chunked_decoder.consume_trailer = 1;
    self->chunked_offset = 0;
    if(disconnect) {
      self->connection = PARSER_CONNECTION_UNSET;
      self->buffer_start = 0;
      self->buffer_end = 0;
    }
}
