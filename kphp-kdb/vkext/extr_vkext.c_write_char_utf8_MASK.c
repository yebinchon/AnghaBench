#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char,char) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5 (int c) {
  //int c = win_to_utf8_convert [_c];
  if (!c) {
    //write_buff_char_2 ('&', '#');
    //write_buff_long (c);
    //write_buff_char (';');
    return;
  }
  /*if (c < 32 || c == 34 || c == 39 || c == 60 || c == 62 || c == 8232 || c == 8233) {
    write_buff_char_2 ('&', '#');
    write_buff_long (c);
    write_buff_char (';');
    return;
  }*/
  if (c < 128) {
    FUNC0 (c);
    return;
  }
  if (c < 0x800) {
    FUNC1 (0xc0 + (c >> 6), 0x80 + (c & 63));
    return;
  }  
  if (c < 0x10000) {
    FUNC2 (0xe0 + (c >> 12), 0x80 + ((c >> 6) & 63), 0x80 + (c & 63));
    return;
  }
  if (c >= 0x1f000 && c <= 0x1f6c0) {
    FUNC3 (0xf0 + (c >> 18), 0x80 + ((c >> 12) & 63), 0x80 + ((c >> 6) & 63), 0x80 + (c & 63));
    return;
  }
  FUNC1 ('$', '#');
  FUNC4 (c);
  FUNC0 (';');
}