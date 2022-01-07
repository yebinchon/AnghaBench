
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yaml_char_t ;


 char* strdup (char*) ;

__attribute__((used)) static inline char *yoml__strdup(yaml_char_t *s)
{
    return strdup((char *)s);
}
