
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;


 int stop_at_checkpoint (int *) ;

int hashcat_session_checkpoint (hashcat_ctx_t *hashcat_ctx)
{
  return stop_at_checkpoint (hashcat_ctx);
}
