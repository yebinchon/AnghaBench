
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int helpers; int password; int username; int path; int host; int protocol; } ;


 int credential_init (struct credential*) ;
 int free (int ) ;
 int string_list_clear (int *,int ) ;

void credential_clear(struct credential *c)
{
 free(c->protocol);
 free(c->host);
 free(c->path);
 free(c->username);
 free(c->password);
 string_list_clear(&c->helpers, 0);

 credential_init(c);
}
