
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int cci_init_status ;
 int cci_probe () ;
 int cci_probing ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cci_init(void)
{
 if (cci_init_status != -EAGAIN)
  return cci_init_status;

 mutex_lock(&cci_probing);
 if (cci_init_status == -EAGAIN)
  cci_init_status = cci_probe();
 mutex_unlock(&cci_probing);
 return cci_init_status;
}
