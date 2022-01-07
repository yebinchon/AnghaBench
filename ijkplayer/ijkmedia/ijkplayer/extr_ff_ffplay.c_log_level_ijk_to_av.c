
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int AV_LOG_INFO ;
 int AV_LOG_QUIET ;
 int AV_LOG_TRACE ;
 int AV_LOG_WARNING ;
 int IJK_LOG_DEBUG ;
 int IJK_LOG_DEFAULT ;
 int IJK_LOG_ERROR ;
 int IJK_LOG_FATAL ;
 int IJK_LOG_INFO ;
 int IJK_LOG_SILENT ;
 int IJK_LOG_UNKNOWN ;
 int IJK_LOG_VERBOSE ;
 int IJK_LOG_WARN ;

__attribute__((used)) inline static int log_level_ijk_to_av(int ijk_level)
{
    int av_level = IJK_LOG_VERBOSE;
    if (ijk_level >= IJK_LOG_SILENT) av_level = AV_LOG_QUIET;
    else if (ijk_level >= IJK_LOG_FATAL) av_level = AV_LOG_FATAL;
    else if (ijk_level >= IJK_LOG_ERROR) av_level = AV_LOG_ERROR;
    else if (ijk_level >= IJK_LOG_WARN) av_level = AV_LOG_WARNING;
    else if (ijk_level >= IJK_LOG_INFO) av_level = AV_LOG_INFO;

    else if (ijk_level >= IJK_LOG_DEBUG) av_level = AV_LOG_DEBUG;
    else if (ijk_level >= IJK_LOG_VERBOSE) av_level = AV_LOG_TRACE;
    else if (ijk_level >= IJK_LOG_DEFAULT) av_level = AV_LOG_TRACE;
    else if (ijk_level >= IJK_LOG_UNKNOWN) av_level = AV_LOG_TRACE;
    else av_level = AV_LOG_TRACE;
    return av_level;
}
