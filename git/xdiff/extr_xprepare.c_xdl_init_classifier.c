
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long flags; int hbits; int hsize; long alloc; scalar_t__ count; int ncha; int ** rchash; int ** rcrecs; } ;
typedef TYPE_1__ xdlclassifier_t ;
typedef int xdlclass_t ;


 int memset (int **,int ,int) ;
 int xdl_cha_free (int *) ;
 scalar_t__ xdl_cha_init (int *,int,long) ;
 int xdl_free (int **) ;
 int xdl_hashbits (unsigned int) ;
 scalar_t__ xdl_malloc (int) ;

__attribute__((used)) static int xdl_init_classifier(xdlclassifier_t *cf, long size, long flags) {
 cf->flags = flags;

 cf->hbits = xdl_hashbits((unsigned int) size);
 cf->hsize = 1 << cf->hbits;

 if (xdl_cha_init(&cf->ncha, sizeof(xdlclass_t), size / 4 + 1) < 0) {

  return -1;
 }
 if (!(cf->rchash = (xdlclass_t **) xdl_malloc(cf->hsize * sizeof(xdlclass_t *)))) {

  xdl_cha_free(&cf->ncha);
  return -1;
 }
 memset(cf->rchash, 0, cf->hsize * sizeof(xdlclass_t *));

 cf->alloc = size;
 if (!(cf->rcrecs = (xdlclass_t **) xdl_malloc(cf->alloc * sizeof(xdlclass_t *)))) {

  xdl_free(cf->rchash);
  xdl_cha_free(&cf->ncha);
  return -1;
 }

 cf->count = 0;

 return 0;
}
