
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
typedef int yaml_parser_t ;
typedef int yaml_char_t ;


 int strlen (char const*) ;
 int yaml_parser_delete (int *) ;
 int yaml_parser_initialize (int *) ;
 int yaml_parser_set_input_string (int *,int *,int ) ;
 int * yoml_parse_document (int *,int *,int *,char const*) ;

__attribute__((used)) static yoml_t *parse(const char *fn, const char *s)
{
    yaml_parser_t parser;
    yoml_t *doc;

    yaml_parser_initialize(&parser);
    yaml_parser_set_input_string(&parser, (yaml_char_t*)s, strlen(s));
    doc = yoml_parse_document(&parser, ((void*)0), ((void*)0), fn);
    yaml_parser_delete(&parser);

    return doc;
}
