; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_reset.c_do_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_reset.c_do_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OWER_WME = common dso_local global i64 0, align 8
@OWER = common dso_local global i32 0, align 4
@OSSR_M3 = common dso_local global i64 0, align 8
@OSSR = common dso_local global i32 0, align 4
@OSCR = common dso_local global i32 0, align 4
@OSMR3 = common dso_local global i32 0, align 4
@MDREFR_SLFRSH = common dso_local global i64 0, align 8
@MDREFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_hw_reset() #0 {
  %1 = load i64, i64* @OWER_WME, align 8
  %2 = load i32, i32* @OWER, align 4
  %3 = call i32 @writel_relaxed(i64 %1, i32 %2)
  %4 = load i64, i64* @OSSR_M3, align 8
  %5 = load i32, i32* @OSSR, align 4
  %6 = call i32 @writel_relaxed(i64 %4, i32 %5)
  %7 = load i32, i32* @OSCR, align 4
  %8 = call i64 @readl_relaxed(i32 %7)
  %9 = add nsw i64 %8, 368640
  %10 = load i32, i32* @OSMR3, align 4
  %11 = call i32 @writel_relaxed(i64 %9, i32 %10)
  br label %12

12:                                               ; preds = %0, %12
  %13 = load i64, i64* @MDREFR_SLFRSH, align 8
  %14 = load i32, i32* @MDREFR, align 4
  %15 = call i32 @writel_relaxed(i64 %13, i32 %14)
  br label %12
}

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i64 @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
