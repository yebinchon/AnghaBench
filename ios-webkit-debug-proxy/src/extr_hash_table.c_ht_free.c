
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ht_struct {int dummy; } ;
typedef TYPE_1__* ht_t ;
struct TYPE_6__ {struct TYPE_6__* buckets; } ;


 int free (TYPE_1__*) ;
 int ht_clear (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void ht_free(ht_t self) {
  if (self) {
    ht_clear(self);
    free(self->buckets);
    memset(self, 0, sizeof(struct ht_struct));
    free(self);
  }
}
