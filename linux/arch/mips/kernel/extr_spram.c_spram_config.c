
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_cpu_type () ;
 int dspram_load_tag ;
 int dspram_store_tag ;
 int ispram_load_tag ;
 int ispram_store_tag ;
 int probe_spram (char*,int,int *,int *) ;
 unsigned int read_c0_config () ;

void spram_config(void)
{
 unsigned int config0;

 switch (current_cpu_type()) {
 case 136:
 case 135:
 case 134:
 case 138:
 case 137:
 case 132:
 case 129:
 case 131:
 case 128:
 case 133:
 case 130:
  config0 = read_c0_config();

  if (config0 & (1<<24)) {
   probe_spram("ISPRAM", 0x1c000000,
        &ispram_load_tag, &ispram_store_tag);
  }
  if (config0 & (1<<23))
   probe_spram("DSPRAM", 0x1c100000,
        &dspram_load_tag, &dspram_store_tag);
 }
}
