
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GDashMeta ;
typedef int GDashData ;


 int set_max_avgts_len (int *,int *) ;
 int set_max_bw_len (int *,int *) ;
 int set_max_cumts_len (int *,int *) ;
 int set_max_data_len (int *,int *) ;
 int set_max_hit_len (int *,int *) ;
 int set_max_hit_perc_len (int *,int *) ;
 int set_max_maxts_len (int *,int *) ;
 int set_max_method_len (int *,int *) ;
 int set_max_protocol_len (int *,int *) ;
 int set_max_visitors_len (int *,int *) ;
 int set_max_visitors_perc_len (int *,int *) ;

__attribute__((used)) static void
set_metrics_len (GDashMeta * meta, GDashData * idata)
{

  set_max_hit_len (meta, idata);
  set_max_hit_perc_len (meta, idata);
  set_max_visitors_len (meta, idata);
  set_max_visitors_perc_len (meta, idata);


  set_max_bw_len (meta, idata);
  set_max_avgts_len (meta, idata);
  set_max_cumts_len (meta, idata);
  set_max_maxts_len (meta, idata);

  set_max_method_len (meta, idata);
  set_max_protocol_len (meta, idata);
  set_max_data_len (meta, idata);
}
