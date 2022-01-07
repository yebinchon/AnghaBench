
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {int dummy; } ;
struct si_sm_data {int smic_timeout; scalar_t__ truncated; scalar_t__ error_retries; scalar_t__ read_pos; scalar_t__ orig_write_count; scalar_t__ write_count; scalar_t__ write_pos; struct si_sm_io* io; int state; } ;


 int SMIC_IDLE ;
 int SMIC_RETRY_TIMEOUT ;

__attribute__((used)) static unsigned int init_smic_data(struct si_sm_data *smic,
       struct si_sm_io *io)
{
 smic->state = SMIC_IDLE;
 smic->io = io;
 smic->write_pos = 0;
 smic->write_count = 0;
 smic->orig_write_count = 0;
 smic->read_pos = 0;
 smic->error_retries = 0;
 smic->truncated = 0;
 smic->smic_timeout = SMIC_RETRY_TIMEOUT;


 return 3;
}
