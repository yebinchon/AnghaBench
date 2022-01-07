
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int snprintf (char*,int,char*,char*,int const,char const*) ;

void generate_cached_kernel_amp_filename (const u32 attack_kern, char *profile_dir, const char *device_name_chksum_amp_mp, char *cached_file)
{
  snprintf (cached_file, 255, "%s/kernels/amp_a%u.%s.kernel", profile_dir, attack_kern, device_name_chksum_amp_mp);
}
