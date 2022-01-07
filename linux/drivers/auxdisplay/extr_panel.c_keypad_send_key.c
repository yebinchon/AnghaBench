
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t KEYPAD_BUFFER ;
 int atomic_read (int *) ;
 int keypad_available ;
 int * keypad_buffer ;
 size_t keypad_buflen ;
 int keypad_read_wait ;
 int keypad_start ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void keypad_send_key(const char *string, int max_len)
{

 if (!atomic_read(&keypad_available)) {
  while (max_len-- && keypad_buflen < KEYPAD_BUFFER && *string) {
   keypad_buffer[(keypad_start + keypad_buflen++) %
          KEYPAD_BUFFER] = *string++;
  }
  wake_up_interruptible(&keypad_read_wait);
 }
}
