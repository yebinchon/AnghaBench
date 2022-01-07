
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int buf; } ;
typedef TYPE_1__ h2o_token_t ;
struct TYPE_9__ {scalar_t__ len; int base; } ;
typedef TYPE_2__ h2o_iovec_t ;


 int free (int ) ;
 TYPE_1__* h2o_lookup_token (int ,scalar_t__) ;
 TYPE_2__* h2o_mem_alloc (int) ;
 TYPE_2__ h2o_str_stripws (char const*,size_t) ;
 TYPE_2__ h2o_strdup (int *,int ,scalar_t__) ;
 int h2o_strtolower (int ,scalar_t__) ;

__attribute__((used)) static int extract_name(const char *src, size_t len, h2o_iovec_t **_name)
{
    h2o_iovec_t name;
    const h2o_token_t *name_token;

    name = h2o_str_stripws(src, len);
    if (name.len == 0)
        return -1;

    name = h2o_strdup(((void*)0), name.base, name.len);
    h2o_strtolower(name.base, name.len);

    if ((name_token = h2o_lookup_token(name.base, name.len)) != ((void*)0)) {
        *_name = (h2o_iovec_t *)&name_token->buf;
        free(name.base);
    } else {
        *_name = h2o_mem_alloc(sizeof(**_name));
        **_name = name;
    }

    return 0;
}
