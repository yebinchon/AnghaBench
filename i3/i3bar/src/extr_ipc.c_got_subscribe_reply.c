
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLOG (char*,char*) ;

__attribute__((used)) static void got_subscribe_reply(char *reply) {
    DLOG("Got subscribe reply: %s\n", reply);

}
