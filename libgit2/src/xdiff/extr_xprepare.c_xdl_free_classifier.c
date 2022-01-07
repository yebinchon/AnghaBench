
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ncha; int rchash; int rcrecs; } ;
typedef TYPE_1__ xdlclassifier_t ;


 int xdl_cha_free (int *) ;
 int xdl_free (int ) ;

__attribute__((used)) static void xdl_free_classifier(xdlclassifier_t *cf) {

 xdl_free(cf->rcrecs);
 xdl_free(cf->rchash);
 xdl_cha_free(&cf->ncha);
}
