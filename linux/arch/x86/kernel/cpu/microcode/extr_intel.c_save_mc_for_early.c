
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int DEFINE_MUTEX ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int save_microcode_patch (int *,unsigned int) ;
 int show_saved_mc () ;

__attribute__((used)) static void save_mc_for_early(u8 *mc, unsigned int size)
{

 static DEFINE_MUTEX(x86_cpu_microcode_mutex);

 mutex_lock(&x86_cpu_microcode_mutex);

 save_microcode_patch(mc, size);
 show_saved_mc();

 mutex_unlock(&x86_cpu_microcode_mutex);
}
