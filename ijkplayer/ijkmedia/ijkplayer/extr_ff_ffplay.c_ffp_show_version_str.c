
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFPlayer ;


 int AV_LOG_INFO ;
 int FFP_VERSION_MODULE_NAME_LENGTH ;
 int av_log (int *,int ,char*,int ,char const*,char const*) ;

__attribute__((used)) static void ffp_show_version_str(FFPlayer *ffp, const char *module, const char *version)
{
        av_log(ffp, AV_LOG_INFO, "%-*s: %s\n", FFP_VERSION_MODULE_NAME_LENGTH, module, version);
}
