
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* base; size_t len; } ;
struct TYPE_8__ {int attr; TYPE_1__ mimetype; } ;
struct TYPE_9__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ h2o_mimemap_type_t ;
typedef int h2o_mime_attributes_t ;


 int H2O_MIMEMAP_TYPE_MIMETYPE ;
 TYPE_3__* h2o_mem_alloc_shared (int *,scalar_t__,int *) ;
 int h2o_mimemap_get_default_attributes (char const*,int *) ;
 char h2o_tolower (char const) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static h2o_mimemap_type_t *create_extension_type(const char *mime, h2o_mime_attributes_t *attr)
{
    h2o_mimemap_type_t *type = h2o_mem_alloc_shared(((void*)0), sizeof(*type) + strlen(mime) + 1, ((void*)0));
    size_t i;

    memset(type, 0, sizeof(*type));

    type->type = H2O_MIMEMAP_TYPE_MIMETYPE;


    type->data.mimetype.base = (char *)type + sizeof(*type);
    for (i = 0; mime[i] != '\0' && mime[i] != ';'; ++i)
        type->data.mimetype.base[i] = h2o_tolower(mime[i]);
    for (; mime[i] != '\0'; ++i)
        type->data.mimetype.base[i] = mime[i];
    type->data.mimetype.base[i] = '\0';
    type->data.mimetype.len = i;

    if (attr != ((void*)0)) {
        type->data.attr = *attr;
    } else {
        h2o_mimemap_get_default_attributes(mime, &type->data.attr);
    }

    return type;
}
