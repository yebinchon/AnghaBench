; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-mmp2.c_mmp2_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-mmp2.c_mmp2_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@MPMU_WUCRM_PJ_RTC_ALARM = common dso_local global i64 0, align 8
@MPMU_WUCRM_PJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmp2_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %11
    i32 130, label %15
    i32 131, label %17
  ]

11:                                               ; preds = %2, %2
  %12 = call i64 @MPMU_WUCRM_PJ_WAKEUP(i32 4)
  %13 = load i64, i64* @MPMU_WUCRM_PJ_RTC_ALARM, align 8
  %14 = or i64 %12, %13
  store i64 %14, i64* %5, align 8
  br label %19

15:                                               ; preds = %2
  %16 = call i64 @MPMU_WUCRM_PJ_WAKEUP(i32 7)
  store i64 %16, i64* %5, align 8
  br label %19

17:                                               ; preds = %2
  %18 = call i64 @MPMU_WUCRM_PJ_WAKEUP(i32 2)
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %2, %17, %15, %11
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* @MPMU_WUCRM_PJ, align 4
  %27 = call i64 @__raw_readl(i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @MPMU_WUCRM_PJ, align 4
  %32 = call i32 @__raw_writel(i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %22
  br label %47

34:                                               ; preds = %19
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = xor i64 %38, -1
  %40 = load i32, i32* @MPMU_WUCRM_PJ, align 4
  %41 = call i64 @__raw_readl(i32 %40)
  %42 = and i64 %39, %41
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @MPMU_WUCRM_PJ, align 4
  %45 = call i32 @__raw_writel(i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %34
  br label %47

47:                                               ; preds = %46, %33
  ret i32 0
}

declare dso_local i64 @MPMU_WUCRM_PJ_WAKEUP(i32) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
