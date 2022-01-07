
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ yrmcds_cnt ;



int
yrmcds_cnt_fileno(yrmcds_cnt* c) {
    return c->sock;
}
