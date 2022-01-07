
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rail_alignment {int step_uv; int offset_uv; } ;


 int DIV_ROUND_UP (int,int) ;
 int max (int,int) ;

__attribute__((used)) static int round_cvb_voltage(int mv, int v_scale,
        const struct rail_alignment *align)
{

 int uv;
 int step = (align->step_uv ? : 1000) * v_scale;
 int offset = align->offset_uv * v_scale;

 uv = max(mv * 1000, offset) - offset;
 uv = DIV_ROUND_UP(uv, step) * align->step_uv + align->offset_uv;
 return uv / 1000;
}
