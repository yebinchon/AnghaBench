
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tag_parse (void*,char const*,char const*) ;

int git_tag__parse_raw(void *_tag, const char *data, size_t size)
{
 return tag_parse(_tag, data, data + size);
}
