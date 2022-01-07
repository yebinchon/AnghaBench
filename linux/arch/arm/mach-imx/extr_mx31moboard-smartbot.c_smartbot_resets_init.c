
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSPIC_RST_B ;
 int POWER_EN ;
 int TRSLAT_RST_B ;
 int TRSLAT_SRC_CHOICE ;
 int gpio_direction_output (int ,int ) ;
 int gpio_export (int ,int) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static void smartbot_resets_init(void)
{
 if (!gpio_request(POWER_EN, "power-enable")) {
  gpio_direction_output(POWER_EN, 0);
  gpio_export(POWER_EN, 0);
 }

 if (!gpio_request(DSPIC_RST_B, "dspic-rst")) {
  gpio_direction_output(DSPIC_RST_B, 0);
  gpio_export(DSPIC_RST_B, 0);
 }

 if (!gpio_request(TRSLAT_RST_B, "translator-rst")) {
  gpio_direction_output(TRSLAT_RST_B, 0);
  gpio_export(TRSLAT_RST_B, 0);
 }

 if (!gpio_request(TRSLAT_SRC_CHOICE, "translator-src-choice")) {
  gpio_direction_output(TRSLAT_SRC_CHOICE, 0);
  gpio_export(TRSLAT_SRC_CHOICE, 0);
 }
}
