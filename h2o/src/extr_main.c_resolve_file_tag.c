
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct TYPE_16__ {char* scalar; } ;
struct TYPE_19__ {scalar_t__ type; int _refcnt; TYPE_1__ data; } ;
typedef TYPE_4__ yoml_t ;
struct TYPE_18__ {TYPE_7__* member_1; int member_0; } ;
struct TYPE_20__ {char* member_0; TYPE_3__ member_2; int * member_1; } ;
typedef TYPE_5__ yoml_parse_args_t ;
struct TYPE_17__ {int base; } ;
struct TYPE_21__ {TYPE_4__* member_1; int member_0; TYPE_4__* node; TYPE_2__ filename; } ;
typedef TYPE_6__ resolve_tag_node_cache_entry_t ;
struct TYPE_15__ {size_t size; TYPE_6__* entries; } ;
struct TYPE_22__ {TYPE_14__ node_cache; } ;
typedef TYPE_7__ resolve_tag_arg_t ;


 int SIZE_MAX ;
 scalar_t__ YOML_TYPE_SCALAR ;
 int fprintf (int ,char*) ;
 int h2o_strdup (int *,char*,int ) ;
 int h2o_vector_reserve (int *,TYPE_14__*,size_t) ;
 TYPE_4__* load_config (TYPE_5__*,TYPE_4__*) ;
 int resolve_tag ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static yoml_t *resolve_file_tag(yoml_t *node, resolve_tag_arg_t *arg)
{
    size_t i;
    yoml_t *loaded;

    if (node->type != YOML_TYPE_SCALAR) {
        fprintf(stderr, "value of the !file node must be a scalar");
        return ((void*)0);
    }

    char *filename = node->data.scalar;


    for (i = 0; i != arg->node_cache.size; ++i) {
        resolve_tag_node_cache_entry_t *cached = arg->node_cache.entries + i;
        if (strcmp(filename, cached->filename.base) == 0) {
            ++cached->node->_refcnt;
            return cached->node;
        }
    }

    yoml_parse_args_t parse_args = {
        filename,
        ((void*)0),
        {resolve_tag, arg}
    };
    loaded = load_config(&parse_args, node);

    if (loaded != ((void*)0)) {

        h2o_vector_reserve(((void*)0), &arg->node_cache, arg->node_cache.size + 1);
        resolve_tag_node_cache_entry_t entry = {h2o_strdup(((void*)0), filename, SIZE_MAX), loaded};
        arg->node_cache.entries[arg->node_cache.size++] = entry;
        ++loaded->_refcnt;
    }

    return loaded;
}
