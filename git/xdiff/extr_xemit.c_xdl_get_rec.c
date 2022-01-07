
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** recs; } ;
typedef TYPE_2__ xdfile_t ;
struct TYPE_4__ {char* ptr; long size; } ;



__attribute__((used)) static long xdl_get_rec(xdfile_t *xdf, long ri, char const **rec) {

 *rec = xdf->recs[ri]->ptr;

 return xdf->recs[ri]->size;
}
