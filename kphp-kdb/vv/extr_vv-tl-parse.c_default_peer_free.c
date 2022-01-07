
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_peer {int dummy; } ;


 int zfree (struct tl_peer*,int) ;

void default_peer_free (struct tl_peer *self) {
  zfree (self, sizeof (*self));
}
