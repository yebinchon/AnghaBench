
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scalar; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;


 scalar_t__ YOML_TYPE_SCALAR ;
 int sscanf (int ,char*,int*) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int obtain_quality(yoml_t *node, int min_quality, int max_quality, int default_quality, int *slot)
{
    int tmp;
    if (node->type != YOML_TYPE_SCALAR)
        return -1;
    if (strcasecmp(node->data.scalar, "OFF") == 0) {
        *slot = -1;
        return 0;
    }
    if (strcasecmp(node->data.scalar, "ON") == 0) {
        *slot = default_quality;
        return 0;
    }
    if (sscanf(node->data.scalar, "%d", &tmp) == 1 && (min_quality <= tmp && tmp <= max_quality)) {
        *slot = tmp;
        return 0;
    }
    return -1;
}
