
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_space {void* context_buf; int * session_buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;

int tpm2_init_space(struct tpm_space *space)
{
 space->context_buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!space->context_buf)
  return -ENOMEM;

 space->session_buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (space->session_buf == ((void*)0)) {
  kfree(space->context_buf);
  return -ENOMEM;
 }

 return 0;
}
