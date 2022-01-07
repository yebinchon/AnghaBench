
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; int base; } ;
struct TYPE_6__ {TYPE_1__ mimetype; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ data; } ;
typedef TYPE_3__ h2o_mimemap_type_t ;


 scalar_t__ H2O_MIMEMAP_TYPE_MIMETYPE ;
 scalar_t__ memcmp (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int is_mimetype(h2o_mimemap_type_t *type, const char *expected)
{
    return type->type == H2O_MIMEMAP_TYPE_MIMETYPE && type->data.mimetype.len == strlen(expected) &&
           memcmp(type->data.mimetype.base, expected, type->data.mimetype.len) == 0;
}
