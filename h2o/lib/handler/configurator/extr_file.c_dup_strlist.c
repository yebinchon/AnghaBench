
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** h2o_mem_alloc (int) ;

__attribute__((used)) static const char **dup_strlist(const char **s)
{
    size_t i;
    const char **ret;

    for (i = 0; s[i] != ((void*)0); ++i)
        ;
    ret = h2o_mem_alloc(sizeof(*ret) * (i + 1));
    for (i = 0; s[i] != ((void*)0); ++i)
        ret[i] = s[i];
    ret[i] = ((void*)0);

    return ret;
}
