
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct gemini_reset {int map; } ;


 int BIT (unsigned long) ;
 int GEMINI_GLOBAL_SOFT_RESET ;
 unsigned long GEMINI_RESET_CPU1 ;
 int regmap_write (int ,int ,int) ;
 struct gemini_reset* to_gemini_reset (struct reset_controller_dev*) ;

__attribute__((used)) static int gemini_reset(struct reset_controller_dev *rcdev,
   unsigned long id)
{
 struct gemini_reset *gr = to_gemini_reset(rcdev);


 return regmap_write(gr->map,
       GEMINI_GLOBAL_SOFT_RESET,
       BIT(GEMINI_RESET_CPU1) | BIT(id));
}
