
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ICL_UNC_CBO_CONFIG ;
 int ICL_UNC_NUM_CBO_MASK ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static int icl_get_cbox_num(void)
{
 u64 num_boxes;

 rdmsrl(ICL_UNC_CBO_CONFIG, num_boxes);

 return num_boxes & ICL_UNC_NUM_CBO_MASK;
}
