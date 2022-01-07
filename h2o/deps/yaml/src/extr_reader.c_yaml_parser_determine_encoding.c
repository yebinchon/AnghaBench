
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int last; int pointer; } ;
struct TYPE_6__ {int offset; void* encoding; TYPE_1__ raw_buffer; int eof; } ;
typedef TYPE_2__ yaml_parser_t ;


 int BOM_UTF16BE ;
 int BOM_UTF16LE ;
 int BOM_UTF8 ;
 void* YAML_UTF16BE_ENCODING ;
 void* YAML_UTF16LE_ENCODING ;
 void* YAML_UTF8_ENCODING ;
 int memcmp (int,int ,int) ;
 int yaml_parser_update_raw_buffer (TYPE_2__*) ;

__attribute__((used)) static int
yaml_parser_determine_encoding(yaml_parser_t *parser)
{


    while (!parser->eof
            && parser->raw_buffer.last - parser->raw_buffer.pointer < 3) {
        if (!yaml_parser_update_raw_buffer(parser)) {
            return 0;
        }
    }



    if (parser->raw_buffer.last - parser->raw_buffer.pointer >= 2
            && !memcmp(parser->raw_buffer.pointer, BOM_UTF16LE, 2)) {
        parser->encoding = YAML_UTF16LE_ENCODING;
        parser->raw_buffer.pointer += 2;
        parser->offset += 2;
    }
    else if (parser->raw_buffer.last - parser->raw_buffer.pointer >= 2
            && !memcmp(parser->raw_buffer.pointer, BOM_UTF16BE, 2)) {
        parser->encoding = YAML_UTF16BE_ENCODING;
        parser->raw_buffer.pointer += 2;
        parser->offset += 2;
    }
    else if (parser->raw_buffer.last - parser->raw_buffer.pointer >= 3
            && !memcmp(parser->raw_buffer.pointer, BOM_UTF8, 3)) {
        parser->encoding = YAML_UTF8_ENCODING;
        parser->raw_buffer.pointer += 3;
        parser->offset += 3;
    }
    else {
        parser->encoding = YAML_UTF8_ENCODING;
    }

    return 1;
}
