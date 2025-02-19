
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t size; TYPE_1__* entries; } ;
struct TYPE_8__ {TYPE_2__ elements; } ;
typedef TYPE_3__ h2o_logconf_t ;
struct TYPE_9__ {size_t len; int* base; } ;
typedef TYPE_4__ h2o_iovec_t ;
struct TYPE_6__ {int magically_quoted_json; TYPE_4__ suffix; } ;



__attribute__((used)) static int determine_magicquote_nodes(h2o_logconf_t *logconf, char *errbuf)
{
    size_t element_index;
    int quote_char = '\0';
    int just_in = 0;

    for (element_index = 0; element_index < logconf->elements.size; ++element_index) {
        h2o_iovec_t suffix = logconf->elements.entries[element_index].suffix;
        logconf->elements.entries[element_index].magically_quoted_json = just_in && suffix.len != 0 && suffix.base[0] == quote_char;

        just_in = 0;

        size_t i;
        for (i = 0; i < suffix.len; ++i) {
            just_in = 0;
            if (quote_char != '\0') {
                if (quote_char == suffix.base[i]) {

                    size_t j, num_bs = 0;
                    for (j = i; j != 0; ++num_bs)
                        if (suffix.base[--j] != '\\')
                            break;
                    if (num_bs % 2 == 0)
                        quote_char = '\0';
                }
            } else {
                if (suffix.base[i] == '"' || suffix.base[i] == '\'') {
                    quote_char = suffix.base[i];
                    just_in = 1;
                }
            }
        }
    }

    return 1;
}
