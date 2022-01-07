
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct debug_view {int dummy; } ;
struct TYPE_3__ {int buf_size; } ;
typedef TYPE_1__ debug_info_t ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int debug_raw_format_fn(debug_info_t *id, struct debug_view *view,
          char *out_buf, const char *in_buf)
{
 int rc;

 rc = id->buf_size;
 memcpy(out_buf, in_buf, id->buf_size);
 return rc;
}
