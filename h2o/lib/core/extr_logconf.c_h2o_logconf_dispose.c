
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {size_t size; TYPE_5__* entries; } ;
struct TYPE_8__ {TYPE_5__* base; } ;
struct TYPE_9__ {TYPE_1__ name; } ;
struct TYPE_10__ {TYPE_5__* base; } ;
struct TYPE_12__ {int type; TYPE_4__ elements; TYPE_2__ data; TYPE_3__ suffix; } ;
typedef TYPE_5__ h2o_logconf_t ;






 int free (TYPE_5__*) ;

void h2o_logconf_dispose(h2o_logconf_t *logconf)
{
    size_t i;

    for (i = 0; i != logconf->elements.size; ++i) {
        free(logconf->elements.entries[i].suffix.base);
        switch (logconf->elements.entries[i].type) {
        case 131:
        case 130:
        case 129:
        case 128:
            free(logconf->elements.entries[i].data.name.base);
            break;
        default:
            break;
        }
    }
    free(logconf->elements.entries);
    free(logconf);
}
