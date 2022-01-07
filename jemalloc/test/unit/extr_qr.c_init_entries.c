
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char id; } ;
typedef TYPE_1__ ring_t ;


 unsigned int NENTRIES ;
 int link ;
 int qr_new (TYPE_1__*,int ) ;

__attribute__((used)) static void
init_entries(ring_t *entries) {
 unsigned i;

 for (i = 0; i < NENTRIES; i++) {
  qr_new(&entries[i], link);
  entries[i].id = 'a' + i;
 }
}
