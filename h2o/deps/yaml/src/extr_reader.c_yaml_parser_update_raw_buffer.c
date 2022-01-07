
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ start; scalar_t__ pointer; scalar_t__ last; scalar_t__ end; } ;
struct TYPE_6__ {int eof; TYPE_1__ raw_buffer; int offset; int read_handler_data; int (* read_handler ) (int ,scalar_t__,scalar_t__,size_t*) ;} ;
typedef TYPE_2__ yaml_parser_t ;


 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int stub1 (int ,scalar_t__,scalar_t__,size_t*) ;
 int yaml_parser_set_reader_error (TYPE_2__*,char*,int ,int) ;

__attribute__((used)) static int
yaml_parser_update_raw_buffer(yaml_parser_t *parser)
{
    size_t size_read = 0;



    if (parser->raw_buffer.start == parser->raw_buffer.pointer
            && parser->raw_buffer.last == parser->raw_buffer.end)
        return 1;



    if (parser->eof) return 1;



    if (parser->raw_buffer.start < parser->raw_buffer.pointer
            && parser->raw_buffer.pointer < parser->raw_buffer.last) {
        memmove(parser->raw_buffer.start, parser->raw_buffer.pointer,
                parser->raw_buffer.last - parser->raw_buffer.pointer);
    }
    parser->raw_buffer.last -=
        parser->raw_buffer.pointer - parser->raw_buffer.start;
    parser->raw_buffer.pointer = parser->raw_buffer.start;



    if (!parser->read_handler(parser->read_handler_data, parser->raw_buffer.last,
                parser->raw_buffer.end - parser->raw_buffer.last, &size_read)) {
        return yaml_parser_set_reader_error(parser, "input error",
                parser->offset, -1);
    }
    parser->raw_buffer.last += size_read;
    if (!size_read) {
        parser->eof = 1;
    }

    return 1;
}
