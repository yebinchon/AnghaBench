
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtas_validate_flash_t {int update_results; scalar_t__ status; int buf; int buf_size; } ;
typedef scalar_t__ s32 ;


 int VALIDATE_BUF_SIZE ;
 scalar_t__ __pa (int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ rtas_busy_delay (scalar_t__) ;
 scalar_t__ rtas_call (int,int,int,int*,int ,int ) ;
 int rtas_data_buf ;
 int rtas_data_buf_lock ;
 int rtas_token (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void validate_flash(struct rtas_validate_flash_t *args_buf)
{
 int token = rtas_token("ibm,validate-flash-image");
 int update_results;
 s32 rc;

 rc = 0;
 do {
  spin_lock(&rtas_data_buf_lock);
  memcpy(rtas_data_buf, args_buf->buf, VALIDATE_BUF_SIZE);
  rc = rtas_call(token, 2, 2, &update_results,
          (u32) __pa(rtas_data_buf), args_buf->buf_size);
  memcpy(args_buf->buf, rtas_data_buf, VALIDATE_BUF_SIZE);
  spin_unlock(&rtas_data_buf_lock);
 } while (rtas_busy_delay(rc));

 args_buf->status = rc;
 args_buf->update_results = update_results;
}
