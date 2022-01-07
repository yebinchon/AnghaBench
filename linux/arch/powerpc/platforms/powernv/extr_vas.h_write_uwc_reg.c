
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vas_window {void* uwc_map; } ;
typedef int s32 ;


 int out_be64 (void*,int ) ;
 int vas_log_write (struct vas_window*,char*,void*,int ) ;

__attribute__((used)) static inline void write_uwc_reg(struct vas_window *win, char *name,
   s32 reg, u64 val)
{
 void *regptr;

 regptr = win->uwc_map + reg;
 vas_log_write(win, name, regptr, val);

 out_be64(regptr, val);
}
