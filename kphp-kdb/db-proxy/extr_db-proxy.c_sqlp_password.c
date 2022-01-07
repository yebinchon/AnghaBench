
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int custom; } ;


 int SHA1 (unsigned char*,int,unsigned char*) ;
 TYPE_1__* SQLS_DATA (struct connection*) ;
 int memset (char*,int ,int) ;
 int mrand48 () ;
 scalar_t__ sql_password ;
 int sql_username ;
 int strcmp (char const*,int ) ;
 int strlen (scalar_t__) ;

int sqlp_password (struct connection *c, const char *user, char buffer[20]) {
  memset (buffer, 0, 20);

  if (!strcmp (user, sql_username)) {
    unsigned char buffer2[20];
    SHA1 ((unsigned char *)sql_password, strlen (sql_password), buffer2);
    SHA1 (buffer2, 20, (unsigned char *)buffer);
    SQLS_DATA(c)->custom = mrand48();
    return 1;
  }

  return 0;
}
