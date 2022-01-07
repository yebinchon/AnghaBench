
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFPlayer ;


 int AV_LOG_INFO ;
 int FFP_VERSION_MODULE_NAME_LENGTH ;
 scalar_t__ IJKVERSION_GET_MAJOR (unsigned int) ;
 scalar_t__ IJKVERSION_GET_MICRO (unsigned int) ;
 scalar_t__ IJKVERSION_GET_MINOR (unsigned int) ;
 int av_log (int *,int ,char*,int ,char const*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void ffp_show_version_int(FFPlayer *ffp, const char *module, unsigned version)
{
    av_log(ffp, AV_LOG_INFO, "%-*s: %u.%u.%u\n",
           FFP_VERSION_MODULE_NAME_LENGTH, module,
           (unsigned int)IJKVERSION_GET_MAJOR(version),
           (unsigned int)IJKVERSION_GET_MINOR(version),
           (unsigned int)IJKVERSION_GET_MICRO(version));
}
