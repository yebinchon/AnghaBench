
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int RTAS_DATA_BUF_SIZE ;
 int memcpy (char*,char*,int ) ;
 int rtas_call (int,int,int,int *,char*,int ) ;
 char* rtas_data_buf ;
 int rtas_data_buf_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mobility_rtas_call(int token, char *buf, s32 scope)
{
 int rc;

 spin_lock(&rtas_data_buf_lock);

 memcpy(rtas_data_buf, buf, RTAS_DATA_BUF_SIZE);
 rc = rtas_call(token, 2, 1, ((void*)0), rtas_data_buf, scope);
 memcpy(buf, rtas_data_buf, RTAS_DATA_BUF_SIZE);

 spin_unlock(&rtas_data_buf_lock);
 return rc;
}
