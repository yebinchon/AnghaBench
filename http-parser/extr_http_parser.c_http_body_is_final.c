
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_parser {scalar_t__ state; } ;


 scalar_t__ s_message_done ;

int
http_body_is_final(const struct http_parser *parser) {
    return parser->state == s_message_done;
}
