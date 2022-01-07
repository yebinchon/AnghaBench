
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEM_BLOCK_NAME ;
 int SEM_COUNT_NAME ;
 int printf (char*) ;
 int sem_unlink (int ) ;
 int sscanf (char*,char*,int*) ;
 scalar_t__ sync_wait (int) ;
 int wait_timeout ;

int main(int argc,char *argv[])
{
    if(argc!=3)
    {
        printf("Usage: shellsync <process num> <wait_timeout>\n");
    }
    else
    {
        int proc_num;
        sscanf(argv[1],"%d",&proc_num);
        sscanf(argv[2],"%d",&wait_timeout);
        if(sync_wait(proc_num)<0)
        {
            printf("Processes sync failed.\n");
            sem_unlink(SEM_COUNT_NAME);
            sem_unlink(SEM_BLOCK_NAME);
            return 1;
        }
        else
        {
            printf("Processes sync succeed.\n");
            return 0;
        }
    }
}
