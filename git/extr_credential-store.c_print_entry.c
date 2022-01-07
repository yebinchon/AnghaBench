
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {char* username; char* password; } ;


 int printf (char*,char*) ;

__attribute__((used)) static void print_entry(struct credential *c)
{
 printf("username=%s\n", c->username);
 printf("password=%s\n", c->password);
}
