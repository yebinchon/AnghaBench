
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 TYPE_1__ h2o_strdup (int *,char const*,size_t) ;
 int h2o_strtolower (int ,int ) ;

__attribute__((used)) static h2o_iovec_t strdup_lowercased(const char *s, size_t len)
{
    h2o_iovec_t v = h2o_strdup(((void*)0), s, len);
    h2o_strtolower(v.base, v.len);
    return v;
}
