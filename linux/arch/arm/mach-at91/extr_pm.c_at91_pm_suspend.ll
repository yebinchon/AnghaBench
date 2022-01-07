; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-at91/extr_pm.c_at91_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-at91/extr_pm.c_at91_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@soc_pm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@AT91_PM_BACKUP = common dso_local global i64 0, align 8
@pm_bu = common dso_local global %struct.TYPE_6__* null, align 8
@at91_suspend_sram_fn = common dso_local global i32 0, align 4
@at91_pm_suspend_in_sram = common dso_local global i32 0, align 4
@at91_pm_suspend_in_sram_sz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @at91_pm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_pm_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @soc_pm, i32 0, i32 0, i32 0), align 8
  %4 = load i64, i64* @AT91_PM_BACKUP, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm_bu, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = call i32 @cpu_suspend(i32 0, i32 (i32)* @at91_suspend_finish)
  %10 = load i32, i32* @at91_suspend_sram_fn, align 4
  %11 = load i32, i32* @at91_pm_suspend_in_sram_sz, align 4
  %12 = call i32 @fncpy(i32 %10, i32* @at91_pm_suspend_in_sram, i32 %11)
  store i32 %12, i32* @at91_suspend_sram_fn, align 4
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @at91_suspend_finish(i32 0)
  br label %15

15:                                               ; preds = %13, %6
  %16 = call i32 (...) @outer_resume()
  ret void
}

declare dso_local i32 @cpu_suspend(i32, i32 (i32)*) #1

declare dso_local i32 @at91_suspend_finish(i32) #1

declare dso_local i32 @fncpy(i32, i32*, i32) #1

declare dso_local i32 @outer_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
