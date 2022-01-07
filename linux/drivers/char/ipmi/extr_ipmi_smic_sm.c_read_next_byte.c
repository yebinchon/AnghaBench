
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {size_t read_pos; int truncated; int * read_data; } ;


 size_t MAX_SMIC_READ_SIZE ;
 int read_smic_data (struct si_sm_data*) ;

__attribute__((used)) static inline void read_next_byte(struct si_sm_data *smic)
{
 if (smic->read_pos >= MAX_SMIC_READ_SIZE) {
  read_smic_data(smic);
  smic->truncated = 1;
 } else {
  smic->read_data[smic->read_pos] = read_smic_data(smic);
  smic->read_pos++;
 }
}
