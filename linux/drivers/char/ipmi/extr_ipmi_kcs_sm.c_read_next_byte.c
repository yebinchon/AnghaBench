
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {size_t read_pos; int truncated; int * read_data; } ;


 int KCS_READ_BYTE ;
 size_t MAX_KCS_READ_SIZE ;
 int read_data (struct si_sm_data*) ;
 int write_data (struct si_sm_data*,int ) ;

__attribute__((used)) static inline void read_next_byte(struct si_sm_data *kcs)
{
 if (kcs->read_pos >= MAX_KCS_READ_SIZE) {

  read_data(kcs);
  kcs->truncated = 1;
 } else {
  kcs->read_data[kcs->read_pos] = read_data(kcs);
  (kcs->read_pos)++;
 }
 write_data(kcs, KCS_READ_BYTE);
}
