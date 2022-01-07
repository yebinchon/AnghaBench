
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int status; scalar_t__ retry_interval; scalar_t__ failed; scalar_t__ last_received_time; } ;


 int _rpc_connect_open (struct rpc_server*,char**,int*) ;
 char* estrdup (char*) ;
 scalar_t__ ping_timeout ;
 scalar_t__ precise_now ;
 int rpc_ping (struct rpc_server*) ;



 int update_precise_now () ;

__attribute__((used)) static int rpc_open (struct rpc_server *server, char **error_string, int *errnum) {
  switch (server->status) {
    case 129:
      if (_rpc_connect_open (server, error_string, errnum) > 0) {
        return 1;
      } else {
        break;
      }

    case 130:
      update_precise_now ();
      if (precise_now - server->last_received_time > ping_timeout) {
        if (rpc_ping (server) > 0) {
          return 1;
        } else if (_rpc_connect_open (server, error_string, errnum) > 0) {
          return 1;
        } else {
          break;
        }
      } else {
        return 1;
      }


    case 128:
      update_precise_now ();
      if (server->retry_interval >= 0 && precise_now >= server->failed + server->retry_interval) {
        if (_rpc_connect_open (server, error_string, errnum) > 0) {
          return 1;
        }
      } else {
        if (error_string) {
          *error_string = estrdup ("server failed some time ago. Fail timeout not exceeded.");
          *errnum = 0;
        }
        break;
      }
      break;
  }
  return -1;
}
