
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ shutdown_entry; scalar_t__ shutdown_type; } ;


 scalar_t__ TB_SHUTDOWN_S3 ;
 int halt () ;
 int switch_to_tboot_pt () ;
 TYPE_1__* tboot ;
 int tboot_enabled () ;
 int tboot_pg_dir ;
 scalar_t__ tboot_setup_sleep () ;

void tboot_shutdown(u32 shutdown_type)
{
 void (*shutdown)(void);

 if (!tboot_enabled())
  return;






 if (!tboot_pg_dir)
  return;


 if (shutdown_type == TB_SHUTDOWN_S3)
  if (tboot_setup_sleep())
   return;

 tboot->shutdown_type = shutdown_type;

 switch_to_tboot_pt();

 shutdown = (void(*)(void))(unsigned long)tboot->shutdown_entry;
 shutdown();


 while (1)
  halt();
}
