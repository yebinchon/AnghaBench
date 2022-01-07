
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int __u32 ;
struct TYPE_4__ {scalar_t__ expires; } ;


 unsigned int ASC_CONTROL ;
 size_t ASC_ENABLE ;
 int ASC_ENABLE_SAMPLE ;
 size_t ASC_MODE ;
 int ASC_MODE_SAMPLE ;
 size_t ASC_VOLUME ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mac_asc_inited ;
 int* mac_asc_regs ;
 int* mac_asc_wave_tab ;
 int mac_init_asc () ;
 int mac_nosound (int ) ;
 TYPE_1__ mac_sound_timer ;
 int mac_special_bell (unsigned int,unsigned int,int) ;

void mac_mksound( unsigned int freq, unsigned int length )
{
 __u32 cfreq = ( freq << 5 ) / 468;
 unsigned long flags;
 int i;

 if ( mac_special_bell == ((void*)0) )
 {

  return;
 }

 if ( !mac_asc_inited )
  mac_init_asc();

 if ( mac_special_bell )
 {
  mac_special_bell( freq, length, 128 );
  return;
 }

 if ( freq < 20 || freq > 20000 || length == 0 )
 {
  mac_nosound( 0 );
  return;
 }

 local_irq_save(flags);

 del_timer( &mac_sound_timer );

 for ( i = 0; i < 0x800; i++ )
  mac_asc_regs[ i ] = 0;
 for ( i = 0; i < 0x800; i++ )
  mac_asc_regs[ i ] = mac_asc_wave_tab[ i ];

 for ( i = 0; i < 8; i++ )
  *( __u32* )( ( __u32 )mac_asc_regs + ASC_CONTROL + 0x814 + 8 * i ) = cfreq;

 mac_asc_regs[ 0x807 ] = 0;
 mac_asc_regs[ ASC_VOLUME ] = 128;
 mac_asc_regs[ 0x805 ] = 0;
 mac_asc_regs[ 0x80F ] = 0;
 mac_asc_regs[ ASC_MODE ] = ASC_MODE_SAMPLE;
 mac_asc_regs[ ASC_ENABLE ] = ASC_ENABLE_SAMPLE;

 mac_sound_timer.expires = jiffies + length;
 add_timer( &mac_sound_timer );

 local_irq_restore(flags);
}
