
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 char* ERR_func_error_string (int) ;
 char* ERR_lib_error_string (int) ;
 char* ERR_reason_error_string (int) ;
 int bufferevent_get_openssl_error (struct bufferevent*) ;
 int error (char*,int,char const*,char const*,char const*) ;

__attribute__((used)) static void be_ssl_errors(struct bufferevent *bev)
{
 int err;
 while ((err = bufferevent_get_openssl_error(bev))) {
  const char *msg = ERR_reason_error_string(err);
  const char *lib = ERR_lib_error_string(err);
  const char *func = ERR_func_error_string(err);
  error("ssl/err=%d/%s in %s %s\n", err, msg, lib, func);
 }
}
