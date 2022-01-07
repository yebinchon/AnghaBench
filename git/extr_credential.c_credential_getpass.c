
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {void* password; void* username; } ;


 int PROMPT_ASKPASS ;
 int PROMPT_ECHO ;
 void* credential_ask_one (char*,struct credential*,int) ;

__attribute__((used)) static void credential_getpass(struct credential *c)
{
 if (!c->username)
  c->username = credential_ask_one("Username", c,
       PROMPT_ASKPASS|PROMPT_ECHO);
 if (!c->password)
  c->password = credential_ask_one("Password", c,
       PROMPT_ASKPASS);
}
