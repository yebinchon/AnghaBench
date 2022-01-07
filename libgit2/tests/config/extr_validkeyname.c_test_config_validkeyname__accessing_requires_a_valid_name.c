
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_invalid_config_key_name (char*) ;

void test_config_validkeyname__accessing_requires_a_valid_name(void)
{
 assert_invalid_config_key_name("");
 assert_invalid_config_key_name(".");
 assert_invalid_config_key_name("..");
 assert_invalid_config_key_name("core.");
 assert_invalid_config_key_name("d#ff.dirstat.lines");
 assert_invalid_config_key_name("diff.dirstat.lines#");
 assert_invalid_config_key_name("dif\nf.dirstat.lines");
 assert_invalid_config_key_name("dif.dir\nstat.lines");
 assert_invalid_config_key_name("dif.dirstat.li\nes");
}
