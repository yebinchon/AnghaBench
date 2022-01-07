
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct lazy_dir_thread_data {int lazy_entries; int k_end; int k_start; int istate; } ;


 struct strbuf STRBUF_INIT ;
 int handle_range_1 (int ,int ,int ,int *,struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void *lazy_dir_thread_proc(void *_data)
{
 struct lazy_dir_thread_data *d = _data;
 struct strbuf prefix = STRBUF_INIT;
 handle_range_1(d->istate, d->k_start, d->k_end, ((void*)0), &prefix, d->lazy_entries);
 strbuf_release(&prefix);
 return ((void*)0);
}
