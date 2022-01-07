
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int ASSERT (int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int uv_get_process_title (char*,int) ;
 int uv_set_process_title (char const*) ;

__attribute__((used)) static void set_title(const char* title) {
  char buffer[512];
  int err;

  err = uv_get_process_title(buffer, sizeof(buffer));
  ASSERT(err == 0);

  err = uv_set_process_title(title);
  ASSERT(err == 0);

  err = uv_get_process_title(buffer, sizeof(buffer));
  ASSERT(err == 0);

  ASSERT(strcmp(buffer, title) == 0);
}
