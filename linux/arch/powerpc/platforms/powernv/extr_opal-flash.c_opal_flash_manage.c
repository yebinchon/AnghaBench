
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct manage_flash_t {int status; } ;


 struct manage_flash_t manage_flash_data ;
 int opal_manage_flash (int ) ;

__attribute__((used)) static inline void opal_flash_manage(uint8_t op)
{
 struct manage_flash_t *const args_buf = &manage_flash_data;

 args_buf->status = opal_manage_flash(op);
}
