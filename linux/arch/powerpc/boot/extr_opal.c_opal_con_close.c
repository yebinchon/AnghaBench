
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int opal_con_id ;
 int opal_console_flush (int ) ;

__attribute__((used)) static void opal_con_close(void)
{
 opal_console_flush(opal_con_id);
}
