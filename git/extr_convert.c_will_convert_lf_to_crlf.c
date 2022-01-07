
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_stat {scalar_t__ crlf; scalar_t__ lonecr; int lonelf; } ;
typedef enum crlf_action { ____Placeholder_crlf_action } crlf_action ;


 int CRLF_AUTO ;
 int CRLF_AUTO_CRLF ;
 int CRLF_AUTO_INPUT ;
 scalar_t__ EOL_CRLF ;
 scalar_t__ convert_is_binary (struct text_stat*) ;
 scalar_t__ output_eol (int) ;

__attribute__((used)) static int will_convert_lf_to_crlf(struct text_stat *stats,
       enum crlf_action crlf_action)
{
 if (output_eol(crlf_action) != EOL_CRLF)
  return 0;

 if (!stats->lonelf)
  return 0;

 if (crlf_action == CRLF_AUTO || crlf_action == CRLF_AUTO_INPUT || crlf_action == CRLF_AUTO_CRLF) {


  if (stats->lonecr || stats->crlf)
   return 0;

  if (convert_is_binary(stats))
   return 0;
 }
 return 1;

}
