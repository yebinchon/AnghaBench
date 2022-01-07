
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int portTickType ;


 scalar_t__ jerry_task_init () ;
 int js_exit () ;
 int js_loop (int ) ;
 int portTICK_RATE_MS ;
 int show_free_mem (int) ;
 int vTaskDelay (int const) ;

__attribute__((used)) static void jerry_task(void *pvParameters) {
  if (jerry_task_init() == 0) {
    const portTickType xDelay = 100 / portTICK_RATE_MS;
    uint32_t ticknow = 0;

    for (;;) {
      vTaskDelay(xDelay);
      js_loop(ticknow);
      if (!ticknow) {
        show_free_mem(4);
      }
      ticknow++;
    }
  }
  js_exit();
}
