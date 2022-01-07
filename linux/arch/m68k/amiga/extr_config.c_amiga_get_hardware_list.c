
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int A1200_IDE ;
 int A2000_CLK ;
 int A3000_CLK ;
 int A3000_SCSI ;
 int A4000_IDE ;
 int A4000_SCSI ;
 int AGNUS_HR_NTSC ;
 int AGNUS_HR_PAL ;
 int AGNUS_NTSC ;
 int AGNUS_PAL ;
 int ALICE_NTSC ;
 int ALICE_PAL ;
 int AMBER_FF ;
 int AMIGAHW_ANNOUNCE (int ,char*) ;
 scalar_t__ AMIGAHW_PRESENT (int ) ;
 int AMI_AUDIO ;
 int AMI_BLITTER ;
 int AMI_FLOPPY ;
 int AMI_KEYBOARD ;
 int AMI_MOUSE ;
 int AMI_PARALLEL ;
 int AMI_SERIAL ;
 int AMI_VIDEO ;
 int CD_ROM ;
 int CHIP_RAM ;



 int DENISE ;
 int DENISE_HR ;
 int LISA ;
 int MAGIC_REKICK ;
 int PAULA ;
 int PCMCIA ;
 int ZORRO ;
 int ZORRO3 ;
 int amiga_chip_size ;
 int amiga_chipset ;
 int amiga_eclock ;
 int amiga_psfreq ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int zorro_num_autocon ;

__attribute__((used)) static void amiga_get_hardware_list(struct seq_file *m)
{
 if (AMIGAHW_PRESENT(CHIP_RAM))
  seq_printf(m, "Chip RAM:\t%ldK\n", amiga_chip_size>>10);
 seq_printf(m, "PS Freq:\t%dHz\nEClock Freq:\t%ldHz\n",
   amiga_psfreq, amiga_eclock);
 if (AMIGAHW_PRESENT(AMI_VIDEO)) {
  char *type;
  switch (amiga_chipset) {
  case 128:
   type = "OCS";
   break;
  case 129:
   type = "ECS";
   break;
  case 130:
   type = "AGA";
   break;
  default:
   type = "Old or Unknown";
   break;
  }
  seq_printf(m, "Graphics:\t%s\n", type);
 }





 seq_puts(m, "Detected hardware:\n");
 if (AMIGAHW_PRESENT(AMI_VIDEO)) seq_printf (m, "\t%s\n", "Amiga Video");
 if (AMIGAHW_PRESENT(AMI_BLITTER)) seq_printf (m, "\t%s\n", "Blitter");
 if (AMIGAHW_PRESENT(AMBER_FF)) seq_printf (m, "\t%s\n", "Amber Flicker Fixer");
 if (AMIGAHW_PRESENT(AMI_AUDIO)) seq_printf (m, "\t%s\n", "Amiga Audio");
 if (AMIGAHW_PRESENT(AMI_FLOPPY)) seq_printf (m, "\t%s\n", "Floppy Controller");
 if (AMIGAHW_PRESENT(A3000_SCSI)) seq_printf (m, "\t%s\n", "SCSI Controller WD33C93 (A3000 style)");
 if (AMIGAHW_PRESENT(A4000_SCSI)) seq_printf (m, "\t%s\n", "SCSI Controller NCR53C710 (A4000T style)");
 if (AMIGAHW_PRESENT(A1200_IDE)) seq_printf (m, "\t%s\n", "IDE Interface (A1200 style)");
 if (AMIGAHW_PRESENT(A4000_IDE)) seq_printf (m, "\t%s\n", "IDE Interface (A4000 style)");
 if (AMIGAHW_PRESENT(CD_ROM)) seq_printf (m, "\t%s\n", "Internal CD ROM drive");
 if (AMIGAHW_PRESENT(AMI_KEYBOARD)) seq_printf (m, "\t%s\n", "Keyboard");
 if (AMIGAHW_PRESENT(AMI_MOUSE)) seq_printf (m, "\t%s\n", "Mouse Port");
 if (AMIGAHW_PRESENT(AMI_SERIAL)) seq_printf (m, "\t%s\n", "Serial Port");
 if (AMIGAHW_PRESENT(AMI_PARALLEL)) seq_printf (m, "\t%s\n", "Parallel Port");
 if (AMIGAHW_PRESENT(A2000_CLK)) seq_printf (m, "\t%s\n", "Hardware Clock (A2000 style)");
 if (AMIGAHW_PRESENT(A3000_CLK)) seq_printf (m, "\t%s\n", "Hardware Clock (A3000 style)");
 if (AMIGAHW_PRESENT(CHIP_RAM)) seq_printf (m, "\t%s\n", "Chip RAM");
 if (AMIGAHW_PRESENT(PAULA)) seq_printf (m, "\t%s\n", "Paula 8364");
 if (AMIGAHW_PRESENT(DENISE)) seq_printf (m, "\t%s\n", "Denise 8362");
 if (AMIGAHW_PRESENT(DENISE_HR)) seq_printf (m, "\t%s\n", "Denise 8373");
 if (AMIGAHW_PRESENT(LISA)) seq_printf (m, "\t%s\n", "Lisa 8375");
 if (AMIGAHW_PRESENT(AGNUS_PAL)) seq_printf (m, "\t%s\n", "Normal/Fat PAL Agnus 8367/8371");
 if (AMIGAHW_PRESENT(AGNUS_NTSC)) seq_printf (m, "\t%s\n", "Normal/Fat NTSC Agnus 8361/8370");
 if (AMIGAHW_PRESENT(AGNUS_HR_PAL)) seq_printf (m, "\t%s\n", "Fat Hires PAL Agnus 8372");
 if (AMIGAHW_PRESENT(AGNUS_HR_NTSC)) seq_printf (m, "\t%s\n", "Fat Hires NTSC Agnus 8372");
 if (AMIGAHW_PRESENT(ALICE_PAL)) seq_printf (m, "\t%s\n", "PAL Alice 8374");
 if (AMIGAHW_PRESENT(ALICE_NTSC)) seq_printf (m, "\t%s\n", "NTSC Alice 8374");
 if (AMIGAHW_PRESENT(MAGIC_REKICK)) seq_printf (m, "\t%s\n", "Magic Hard Rekick");
 if (AMIGAHW_PRESENT(PCMCIA)) seq_printf (m, "\t%s\n", "PCMCIA Slot");
}
