
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locfile {int dummy; } ;
typedef int block ;


 int OP_IS_CALL_PSEUDO ;
 int UNKNOWN_LOCATION ;
 int assert (int ) ;
 scalar_t__ block_has_main (int ) ;
 int block_has_only_binders_and_imports (int ,int ) ;
 int jq_parse (struct locfile*,int *) ;
 int locfile_locate (struct locfile*,int ,char*) ;

int jq_parse_library(struct locfile* locations, block* answer) {
  int errs = jq_parse(locations, answer);
  if (errs) return errs;
  if (block_has_main(*answer)) {
    locfile_locate(locations, UNKNOWN_LOCATION, "jq: error: library should only have function definitions, not a main expression");
    return 1;
  }
  assert(block_has_only_binders_and_imports(*answer, OP_IS_CALL_PSEUDO));
  return 0;
}
