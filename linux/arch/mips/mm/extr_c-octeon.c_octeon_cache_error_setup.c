
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_handler (int,char*,int) ;

__attribute__((used)) static void octeon_cache_error_setup(void)
{
 extern char except_vec2_octeon;
 set_handler(0x100, &except_vec2_octeon, 0x80);
}
