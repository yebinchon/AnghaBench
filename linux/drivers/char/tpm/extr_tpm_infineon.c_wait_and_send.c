
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dummy; } ;


 int STAT_XFE ;
 int WRFIFO ;
 int tpm_data_out (int ,int ) ;
 int wait (struct tpm_chip*,int ) ;

__attribute__((used)) static void wait_and_send(struct tpm_chip *chip, u8 sendbyte)
{
 wait(chip, STAT_XFE);
 tpm_data_out(sendbyte, WRFIFO);
}
