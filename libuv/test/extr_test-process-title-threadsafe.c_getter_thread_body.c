
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int ASSERT (int) ;
 scalar_t__ strcmp (char*,int ) ;
 int * titles ;
 scalar_t__ uv_get_process_title (char*,int) ;
 int uv_sleep (int ) ;

__attribute__((used)) static void getter_thread_body(void* arg) {
  char buffer[512];

  for (;;) {
    ASSERT(0 == uv_get_process_title(buffer, sizeof(buffer)));
    ASSERT(
      0 == strcmp(buffer, titles[0]) ||
      0 == strcmp(buffer, titles[1]) ||
      0 == strcmp(buffer, titles[2]) ||
      0 == strcmp(buffer, titles[3]));

    uv_sleep(0);
  }
}
