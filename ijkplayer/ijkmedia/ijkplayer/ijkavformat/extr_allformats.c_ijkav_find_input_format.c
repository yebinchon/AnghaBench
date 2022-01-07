
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVInputFormat {int name; } ;
typedef struct AVInputFormat AVInputFormat ;


 struct AVInputFormat* av_iformat_next (struct AVInputFormat*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static struct AVInputFormat *ijkav_find_input_format(const char *iformat_name)
{
    AVInputFormat *fmt = ((void*)0);
    if (!iformat_name)
        return ((void*)0);
    while ((fmt = av_iformat_next(fmt))) {
        if (!fmt->name)
            continue;
        if (!strcmp(iformat_name, fmt->name))
            return fmt;
    }
    return ((void*)0);
}
