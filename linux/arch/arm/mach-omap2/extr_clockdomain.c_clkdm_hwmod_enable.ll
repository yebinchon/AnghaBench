; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_hwmod_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_hwmod_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32 }
%struct.omap_hwmod = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_hwmod_enable(%struct.clockdomain* %0, %struct.omap_hwmod* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca %struct.omap_hwmod*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %4, align 8
  store %struct.omap_hwmod* %1, %struct.omap_hwmod** %5, align 8
  %6 = call i64 (...) @cpu_is_omap24xx()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call i64 (...) @cpu_is_omap34xx()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %21

12:                                               ; preds = %8
  %13 = load %struct.omap_hwmod*, %struct.omap_hwmod** %5, align 8
  %14 = icmp ne %struct.omap_hwmod* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %21

18:                                               ; preds = %12
  %19 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %20 = call i32 @_clkdm_clk_hwmod_enable(%struct.clockdomain* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %15, %11
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i32 @_clkdm_clk_hwmod_enable(%struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
