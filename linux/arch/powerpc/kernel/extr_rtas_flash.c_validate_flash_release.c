
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_validate_flash_t {scalar_t__ status; int buf_size; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int VALIDATE_BUF_SIZE ;
 scalar_t__ VALIDATE_READY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rtas_validate_flash_t rtas_validate_flash_data ;
 int rtas_validate_flash_mutex ;
 int validate_flash (struct rtas_validate_flash_t* const) ;

__attribute__((used)) static int validate_flash_release(struct inode *inode, struct file *file)
{
 struct rtas_validate_flash_t *const args_buf =
  &rtas_validate_flash_data;

 mutex_lock(&rtas_validate_flash_mutex);

 if (args_buf->status == VALIDATE_READY) {
  args_buf->buf_size = VALIDATE_BUF_SIZE;
  validate_flash(args_buf);
 }

 mutex_unlock(&rtas_validate_flash_mutex);
 return 0;
}
