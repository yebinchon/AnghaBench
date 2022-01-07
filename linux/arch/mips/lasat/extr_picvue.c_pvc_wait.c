
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETIME ;
 int PVC_BUSY ;
 int TIMEOUT ;
 int pvc_read_data () ;

__attribute__((used)) static int pvc_wait(void)
{
 int i = TIMEOUT;
 int err = 0;

 while ((pvc_read_data() & PVC_BUSY) && i)
  i--;
 if (i == 0)
  err = -ETIME;

 return err;
}
