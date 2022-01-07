
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_job {int kref; } ;


 int bsg_teardown_job ;
 int kref_put (int *,int ) ;

void bsg_job_put(struct bsg_job *job)
{
 kref_put(&job->kref, bsg_teardown_job);
}
