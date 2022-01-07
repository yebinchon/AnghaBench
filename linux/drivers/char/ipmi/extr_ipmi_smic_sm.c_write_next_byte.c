
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {size_t write_pos; int write_count; int * write_data; } ;


 int write_si_sm_data (struct si_sm_data*,int ) ;

__attribute__((used)) static inline void write_next_byte(struct si_sm_data *smic)
{
 write_si_sm_data(smic, smic->write_data[smic->write_pos]);
 (smic->write_pos)++;
 (smic->write_count)--;
}
