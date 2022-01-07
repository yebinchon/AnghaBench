
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int run_to_completion; } ;


 int flush_messages (struct smi_info*) ;

__attribute__((used)) static void set_run_to_completion(void *send_info, bool i_run_to_completion)
{
 struct smi_info *smi_info = send_info;

 smi_info->run_to_completion = i_run_to_completion;
 if (i_run_to_completion)
  flush_messages(smi_info);
}
