
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_scan_timer () ;
 int init_waitqueue_head (int *) ;
 scalar_t__ keypad_buflen ;
 int keypad_initialized ;
 scalar_t__*** keypad_profile ;
 int keypad_read_wait ;
 int panel_bind_key (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void keypad_init(void)
{
 int keynum;

 init_waitqueue_head(&keypad_read_wait);
 keypad_buflen = 0;



 for (keynum = 0; keypad_profile[keynum][0][0]; keynum++) {
  panel_bind_key(keypad_profile[keynum][0],
          keypad_profile[keynum][1],
          keypad_profile[keynum][2],
          keypad_profile[keynum][3]);
 }

 init_scan_timer();
 keypad_initialized = 1;
}
