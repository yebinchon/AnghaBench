
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 scalar_t__ extract_name (char const*,int,TYPE_1__**) ;
 TYPE_1__ h2o_str_stripws (char const*,int ) ;
 TYPE_1__ h2o_strdup (int *,int ,int ) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static int extract_name_value(const char *src, h2o_iovec_t **name, h2o_iovec_t *value)
{
    const char *colon = strchr(src, ':');

    if (colon == ((void*)0))
        return -1;

    if (extract_name(src, colon - src, name) != 0)
        return -1;
    *value = h2o_str_stripws(colon + 1, strlen(colon + 1));
    *value = h2o_strdup(((void*)0), value->base, value->len);

    return 0;
}
