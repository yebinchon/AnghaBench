
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {size_t size; TYPE_5__** elements; } ;
struct TYPE_18__ {size_t size; TYPE_1__* elements; } ;
struct TYPE_20__ {int scalar; TYPE_3__ sequence; TYPE_2__ mapping; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_4__ data; } ;
typedef TYPE_5__ yoml_t ;
typedef int h2o_mimemap_t ;
struct TYPE_22__ {int is_compressible; int priority; } ;
typedef TYPE_6__ h2o_mime_attributes_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_17__ {TYPE_5__* value; TYPE_5__* key; } ;


 int H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST ;
 int H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL ;



 int assert (int) ;
 int assert_is_extension (int *,TYPE_5__*) ;
 scalar_t__ assert_is_mimetype (int *,TYPE_5__*) ;
 int h2o_configurator_get_one_of (int *,TYPE_5__*,char*) ;
 int h2o_configurator_parse_mapping (int *,TYPE_5__*,char*,char*,TYPE_5__***,TYPE_5__***,TYPE_5__***) ;
 int h2o_fatal (char*) ;
 int h2o_mimemap_define_mimetype (int *,int ,int ,TYPE_6__*) ;
 int h2o_mimemap_get_default_attributes (int ,TYPE_6__*) ;

__attribute__((used)) static int set_mimetypes(h2o_configurator_command_t *cmd, h2o_mimemap_t *mimemap, yoml_t *node)
{
    size_t i, j;

    assert(node->type == 130);

    for (i = 0; i != node->data.mapping.size; ++i) {
        yoml_t *key = node->data.mapping.elements[i].key;
        yoml_t *value = node->data.mapping.elements[i].value;
        if (assert_is_mimetype(cmd, key) != 0)
            return -1;
        switch (value->type) {
        case 129:
            if (assert_is_extension(cmd, value) != 0)
                return -1;
            h2o_mimemap_define_mimetype(mimemap, value->data.scalar + 1, key->data.scalar, ((void*)0));
            break;
        case 128:
            for (j = 0; j != value->data.sequence.size; ++j) {
                yoml_t *ext_node = value->data.sequence.elements[j];
                if (assert_is_extension(cmd, ext_node) != 0)
                    return -1;
                h2o_mimemap_define_mimetype(mimemap, ext_node->data.scalar + 1, key->data.scalar, ((void*)0));
            }
            break;
        case 130: {
            yoml_t **is_compressible, **priority, **extensions;
            h2o_mime_attributes_t attr;
            h2o_mimemap_get_default_attributes(key->data.scalar, &attr);
            if (h2o_configurator_parse_mapping(cmd, value, "extensions:a", "is_compressible:*,priority:*", &extensions,
                                               &is_compressible, &priority) != 0)
                return -1;
            if (is_compressible != ((void*)0)) {
                switch (h2o_configurator_get_one_of(cmd, *is_compressible, "YES,NO")) {
                case 0:
                    attr.is_compressible = 1;
                    break;
                case 1:
                    attr.is_compressible = 0;
                    break;
                default:
                    return -1;
                }
            }
            if (priority != ((void*)0)) {
                switch (h2o_configurator_get_one_of(cmd, *priority, "normal,highest")) {
                case 0:
                    attr.priority = H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL;
                    break;
                case 1:
                    attr.priority = H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST;
                    break;
                default:
                    return -1;
                }
            }
            for (j = 0; j != (*extensions)->data.sequence.size; ++j) {
                yoml_t *ext_node = (*extensions)->data.sequence.elements[j];
                if (assert_is_extension(cmd, ext_node) != 0)
                    return -1;
                h2o_mimemap_define_mimetype(mimemap, ext_node->data.scalar + 1, key->data.scalar, &attr);
            }
        } break;
        default:
            h2o_fatal("logic flaw");
        }
    }

    return 0;
}
