
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_unescape (char*,char*) ;

void test_core_buffer__unescape(void)
{
 assert_unescape("Escaped\\", "Es\\ca\\ped\\");
 assert_unescape("Es\\caped\\", "Es\\\\ca\\ped\\\\");
 assert_unescape("\\", "\\");
 assert_unescape("\\", "\\\\");
 assert_unescape("", "");
}
