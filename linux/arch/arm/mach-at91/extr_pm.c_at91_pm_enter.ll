; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-at91/extr_pm.c_at91_pm_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-at91/extr_pm.c_at91_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@soc_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AT91_PM_ULP0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"AT91: PM - bogus suspend state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @at91_pm_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_pm_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %17 [
    i32 130, label %4
    i32 128, label %4
    i32 129, label %15
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_pm, i32 0, i32 0, i32 0), align 4
  %6 = load i32, i32* @AT91_PM_ULP0, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = call i32 (...) @at91_pm_verify_clocks()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %21

12:                                               ; preds = %8, %4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @at91_pm_suspend(i32 %13)
  br label %20

15:                                               ; preds = %1
  %16 = call i32 (...) @cpu_do_idle()
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %21

20:                                               ; preds = %15, %12
  br label %21

21:                                               ; preds = %20, %17, %11
  ret i32 0
}

declare dso_local i32 @at91_pm_verify_clocks(...) #1

declare dso_local i32 @at91_pm_suspend(i32) #1

declare dso_local i32 @cpu_do_idle(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
