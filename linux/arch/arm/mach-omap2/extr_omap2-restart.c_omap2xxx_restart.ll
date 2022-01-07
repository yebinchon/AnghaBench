; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap2-restart.c_omap2xxx_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap2-restart.c_omap2xxx_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reset_sys_ck = common dso_local global i32 0, align 4
@reset_virt_prcm_set_ck = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2xxx_restart(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @reset_sys_ck, align 4
  %7 = call i32 @clk_get_rate(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @reset_virt_prcm_set_ck, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @clk_set_rate(i32 %8, i32 %9)
  %11 = call i32 (...) @omap_prm_reset_system()
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @omap_prm_reset_system(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
