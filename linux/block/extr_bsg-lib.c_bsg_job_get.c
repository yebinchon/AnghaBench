
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_job {int kref; } ;


 int kref_get_unless_zero (int *) ;

int bsg_job_get(struct bsg_job *job)
{
 return kref_get_unless_zero(&job->kref);
}
