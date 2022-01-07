
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int key; int cert; int ca_cert; } ;
struct config {TYPE_1__ ssl; } ;
struct TYPE_7__ {char* errstr; scalar_t__ err; } ;
typedef TYPE_2__ redisContext ;


 int exit (int) ;
 int printf (char*,char*) ;
 int redisFree (TYPE_2__*) ;
 int redisSecureConnection (TYPE_2__*,int ,int ,int ,int *) ;

__attribute__((used)) static void do_ssl_handshake(redisContext *c, struct config config) {
    (void) c;
    (void) config;

}
