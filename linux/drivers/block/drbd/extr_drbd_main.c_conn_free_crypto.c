
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int * int_dig_vv; int * int_dig_in; int * peer_integrity_tfm; int * integrity_tfm; int * cram_hmac_tfm; int * verify_tfm; int * csums_tfm; } ;


 int crypto_free_shash (int *) ;
 int drbd_free_sock (struct drbd_connection*) ;
 int kfree (int *) ;

void conn_free_crypto(struct drbd_connection *connection)
{
 drbd_free_sock(connection);

 crypto_free_shash(connection->csums_tfm);
 crypto_free_shash(connection->verify_tfm);
 crypto_free_shash(connection->cram_hmac_tfm);
 crypto_free_shash(connection->integrity_tfm);
 crypto_free_shash(connection->peer_integrity_tfm);
 kfree(connection->int_dig_in);
 kfree(connection->int_dig_vv);

 connection->csums_tfm = ((void*)0);
 connection->verify_tfm = ((void*)0);
 connection->cram_hmac_tfm = ((void*)0);
 connection->integrity_tfm = ((void*)0);
 connection->peer_integrity_tfm = ((void*)0);
 connection->int_dig_in = ((void*)0);
 connection->int_dig_vv = ((void*)0);
}
