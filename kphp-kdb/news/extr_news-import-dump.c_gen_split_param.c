
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SPLIT_PARAM_OWNER ;
 scalar_t__ SPLIT_PARAM_OWNERXPLACE ;
 scalar_t__ SPLIT_PARAM_PLACE ;
 int assert (int ) ;
 scalar_t__ split_param ;

inline int gen_split_param (int type, int owner, int place) {
  if (split_param == SPLIT_PARAM_PLACE) {
    return place;
  } else if (split_param == SPLIT_PARAM_OWNER) {
    return owner;
  } else if (split_param == SPLIT_PARAM_OWNERXPLACE) {
    return owner ^ place ^ type;
  } else {
    assert (0);
    return 0;
  }
}
