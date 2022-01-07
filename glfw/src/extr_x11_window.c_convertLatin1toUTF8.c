
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (size_t,int) ;
 int encodeUTF8 (char*,char const) ;

__attribute__((used)) static char* convertLatin1toUTF8(const char* source)
{
    size_t size = 1;
    const char* sp;

    for (sp = source; *sp; sp++)
        size += (*sp & 0x80) ? 2 : 1;

    char* target = calloc(size, 1);
    char* tp = target;

    for (sp = source; *sp; sp++)
        tp += encodeUTF8(tp, *sp);

    return target;
}
