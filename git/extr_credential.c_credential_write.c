
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int password; int username; int path; int host; int protocol; } ;
typedef int FILE ;


 int credential_write_item (int *,char*,int ) ;

void credential_write(const struct credential *c, FILE *fp)
{
 credential_write_item(fp, "protocol", c->protocol);
 credential_write_item(fp, "host", c->host);
 credential_write_item(fp, "path", c->path);
 credential_write_item(fp, "username", c->username);
 credential_write_item(fp, "password", c->password);
}
