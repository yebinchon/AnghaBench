
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * swr_opts; int * player_opts; int * sws_dict; int * codec_opts; int * format_opts; } ;
typedef TYPE_1__ FFPlayer ;
typedef int AVDictionary ;


 int AV_LOG_ERROR ;





 int assert (TYPE_1__*) ;
 int av_log (TYPE_1__*,int ,char*,int) ;

__attribute__((used)) static AVDictionary **ffp_get_opt_dict(FFPlayer *ffp, int opt_category)
{
    assert(ffp);

    switch (opt_category) {
        case 131: return &ffp->format_opts;
        case 132: return &ffp->codec_opts;
        case 128: return &ffp->sws_dict;
        case 130: return &ffp->player_opts;
        case 129: return &ffp->swr_opts;
        default:
            av_log(ffp, AV_LOG_ERROR, "unknown option category %d\n", opt_category);
            return ((void*)0);
    }
}
