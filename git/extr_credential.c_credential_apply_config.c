
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int configured; int path; int protocol; int use_http_path; } ;


 int FREE_AND_NULL (int ) ;
 int credential_config_callback ;
 int git_config (int ,struct credential*) ;
 scalar_t__ proto_is_http (int ) ;

__attribute__((used)) static void credential_apply_config(struct credential *c)
{
 if (c->configured)
  return;
 git_config(credential_config_callback, c);
 c->configured = 1;

 if (!c->use_http_path && proto_is_http(c->protocol)) {
  FREE_AND_NULL(c->path);
 }
}
