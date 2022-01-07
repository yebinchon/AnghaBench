
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int dummy; } ;


 int drbd_err (struct drbd_connection*,char*) ;

__attribute__((used)) static int drbd_do_auth(struct drbd_connection *connection)
{
 drbd_err(connection, "This kernel was build without CONFIG_CRYPTO_HMAC.\n");
 drbd_err(connection, "You need to disable 'cram-hmac-alg' in drbd.conf.\n");
 return -1;
}
