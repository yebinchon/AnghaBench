
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,int) ;
 char* uv__strdup (char*) ;

__attribute__((used)) static const char* uv__unknown_err_code(int err) {
  char buf[32];
  char* copy;

  snprintf(buf, sizeof(buf), "Unknown system error %d", err);
  copy = uv__strdup(buf);

  return copy != ((void*)0) ? copy : "Unknown system error";
}
