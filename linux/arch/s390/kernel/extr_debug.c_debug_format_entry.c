
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct debug_view {scalar_t__ (* format_proc ) (TYPE_3__*,struct debug_view*,scalar_t__,int ) ;scalar_t__ (* header_proc ) (TYPE_3__*,struct debug_view*,size_t,TYPE_4__*,scalar_t__) ;scalar_t__ (* prolog_proc ) (TYPE_3__*,struct debug_view*,scalar_t__) ;} ;
struct TYPE_12__ {size_t act_area; size_t act_page; scalar_t__ temp_buf; int act_entry; struct debug_view* view; TYPE_3__* debug_info_snap; } ;
typedef TYPE_2__ file_private_info_t ;
struct TYPE_13__ {scalar_t__** areas; } ;
typedef TYPE_3__ debug_info_t ;
struct TYPE_11__ {long long stck; } ;
struct TYPE_14__ {TYPE_1__ id; } ;
typedef TYPE_4__ debug_entry_t ;


 int DEBUG_DATA (TYPE_4__*) ;
 int DEBUG_PROLOG_ENTRY ;
 scalar_t__ stub1 (TYPE_3__*,struct debug_view*,scalar_t__) ;
 scalar_t__ stub2 (TYPE_3__*,struct debug_view*,size_t,TYPE_4__*,scalar_t__) ;
 scalar_t__ stub3 (TYPE_3__*,struct debug_view*,scalar_t__,int ) ;

__attribute__((used)) static int debug_format_entry(file_private_info_t *p_info)
{
 debug_info_t *id_snap = p_info->debug_info_snap;
 struct debug_view *view = p_info->view;
 debug_entry_t *act_entry;
 size_t len = 0;

 if (p_info->act_entry == DEBUG_PROLOG_ENTRY) {

  if (view->prolog_proc)
   len += view->prolog_proc(id_snap, view, p_info->temp_buf);
  goto out;
 }
 if (!id_snap->areas)
  goto out;
 act_entry = (debug_entry_t *) ((char *)id_snap->areas[p_info->act_area]
           [p_info->act_page] + p_info->act_entry);

 if (act_entry->id.stck == 0LL)
  goto out;
 if (view->header_proc)
  len += view->header_proc(id_snap, view, p_info->act_area,
      act_entry, p_info->temp_buf + len);
 if (view->format_proc)
  len += view->format_proc(id_snap, view, p_info->temp_buf + len,
      DEBUG_DATA(act_entry));
out:
 return len;
}
