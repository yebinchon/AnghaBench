
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info_ctx {int * old_fp; } ;


 int fclose (int *) ;

__attribute__((used)) static void uic_mark_stale(struct update_info_ctx *uic)
{
 fclose(uic->old_fp);
 uic->old_fp = ((void*)0);
}
