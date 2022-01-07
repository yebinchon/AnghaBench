
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rcha; scalar_t__ recs; scalar_t__ ha; scalar_t__ rchg; scalar_t__ rindex; scalar_t__ rhash; } ;
typedef TYPE_1__ xdfile_t ;


 int xdl_cha_free (int *) ;
 int xdl_free (scalar_t__) ;

__attribute__((used)) static void xdl_free_ctx(xdfile_t *xdf) {

 xdl_free(xdf->rhash);
 xdl_free(xdf->rindex);
 xdl_free(xdf->rchg - 1);
 xdl_free(xdf->ha);
 xdl_free(xdf->recs);
 xdl_cha_free(&xdf->rcha);
}
