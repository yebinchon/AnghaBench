
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int attr; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
typedef TYPE_2__ h2o_mimemap_type_t ;
typedef int h2o_mimemap_t ;
typedef int h2o_mime_attributes_t ;


 TYPE_2__* create_extension_type (char const*,int *) ;
 int h2o_iovec_init (char const*,int ) ;
 int h2o_mem_addref_shared (TYPE_2__*) ;
 int h2o_mem_release_shared (TYPE_2__*) ;
 TYPE_2__* h2o_mimemap_get_type_by_mimetype (int *,int ,int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int set_type (int *,char const*,TYPE_2__*) ;
 int strlen (char const*) ;

void h2o_mimemap_define_mimetype(h2o_mimemap_t *mimemap, const char *ext, const char *mime, h2o_mime_attributes_t *attr)
{
    h2o_mimemap_type_t *new_type;

    if ((new_type = h2o_mimemap_get_type_by_mimetype(mimemap, h2o_iovec_init(mime, strlen(mime)), 1)) != ((void*)0) &&
        (attr == ((void*)0) || memcmp(&new_type->data.attr, attr, sizeof(*attr)) == 0)) {
        h2o_mem_addref_shared(new_type);
    } else {
        new_type = create_extension_type(mime, attr);
    }
    set_type(mimemap, ext, new_type);
    h2o_mem_release_shared(new_type);
}
