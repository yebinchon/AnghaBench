
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {scalar_t__ mode; } ;


 scalar_t__ DFLL_OPEN_LOOP ;

__attribute__((used)) static bool dfll_is_running(struct tegra_dfll *td)
{
 return td->mode >= DFLL_OPEN_LOOP;
}
