
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int SHA1 (unsigned char*,int,unsigned char*) ;
 int memset (char*,int ,int) ;
 int strcmp (char const*,char*) ;

int sqlc_password (struct connection *c, const char *user, char buffer[20]) {
  memset (buffer, 0, 20);

  if (!strcmp (user, "kitten")) {
    unsigned char buffer2[20];
    SHA1 ((unsigned char *)"test", 4, buffer2);
    SHA1 (buffer2, 20, (unsigned char *)buffer);
    return 2;
  }

  return 1;
}
