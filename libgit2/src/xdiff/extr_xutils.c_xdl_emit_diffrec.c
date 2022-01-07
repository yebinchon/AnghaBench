
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* outf ) (int ,TYPE_2__*,int) ;int priv; } ;
typedef TYPE_1__ xdemitcb_t ;
struct TYPE_6__ {char* ptr; long size; } ;
typedef TYPE_2__ mmbuffer_t ;


 long strlen (char*) ;
 scalar_t__ stub1 (int ,TYPE_2__*,int) ;

int xdl_emit_diffrec(char const *rec, long size, char const *pre, long psize,
       xdemitcb_t *ecb) {
 int i = 2;
 mmbuffer_t mb[3];

 mb[0].ptr = (char *) pre;
 mb[0].size = psize;
 mb[1].ptr = (char *) rec;
 mb[1].size = size;
 if (size > 0 && rec[size - 1] != '\n') {
  mb[2].ptr = (char *) "\n\\ No newline at end of file\n";
  mb[2].size = strlen(mb[2].ptr);
  i++;
 }
 if (ecb->outf(ecb->priv, mb, i) < 0) {

  return -1;
 }

 return 0;
}
