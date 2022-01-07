
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_view {int dummy; } ;
typedef int debug_info_t ;
typedef int debug_entry_t ;


 int memcpy (char*,int *,int) ;

__attribute__((used)) static int debug_raw_header_fn(debug_info_t *id, struct debug_view *view,
          int area, debug_entry_t *entry, char *out_buf)
{
 int rc;

 rc = sizeof(debug_entry_t);
 memcpy(out_buf, entry, sizeof(debug_entry_t));
 return rc;
}
