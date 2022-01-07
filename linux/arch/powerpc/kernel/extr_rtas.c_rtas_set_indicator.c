
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int RTAS_UNKNOWN_SERVICE ;
 scalar_t__ rtas_busy_delay (int) ;
 int rtas_call (int,int,int,int *,int,int,int) ;
 int rtas_error_rc (int) ;
 int rtas_token (char*) ;

int rtas_set_indicator(int indicator, int index, int new_value)
{
 int token = rtas_token("set-indicator");
 int rc;

 if (token == RTAS_UNKNOWN_SERVICE)
  return -ENOENT;

 do {
  rc = rtas_call(token, 3, 1, ((void*)0), indicator, index, new_value);
 } while (rtas_busy_delay(rc));

 if (rc < 0)
  return rtas_error_rc(rc);
 return rc;
}
