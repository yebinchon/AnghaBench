
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pts; } ;
typedef TYPE_1__ AMC_Buf_Out ;



__attribute__((used)) static void sort_amc_buf_out(AMC_Buf_Out *buf_out, int size) {
    AMC_Buf_Out *a, *b, tmp;
    int i, j;

    for (i = 0; i < size; i++) {
        for (j = i + 1; j < size; j++) {
            a = buf_out + i;
            b = buf_out + j;
            if (a->pts < b->pts) {
                tmp = *a;
                *a = *b;
                *b = tmp;
            }
        }
    }
}
