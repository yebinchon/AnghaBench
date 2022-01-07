; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-cps.c_cps_nc_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-cps.c_cps_nc_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@CPS_PM_NC_WAIT = common dso_local global i32 0, align 4
@CPS_PM_CLOCK_GATED = common dso_local global i32 0, align 4
@CPS_PM_POWER_GATED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @cps_nc_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cps_nc_enter(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca %struct.cpuidle_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %5, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %11 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @cpus_are_siblings(i32 0, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 129
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 129, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %15, %3
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 130, label %23
    i32 128, label %25
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @CPS_PM_NC_WAIT, align 4
  store i32 %22, i32* %8, align 4
  br label %31

23:                                               ; preds = %19
  %24 = load i32, i32* @CPS_PM_CLOCK_GATED, align 4
  store i32 %24, i32* %8, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @CPS_PM_POWER_GATED, align 4
  store i32 %26, i32* %8, align 4
  br label %31

27:                                               ; preds = %19
  %28 = call i32 (...) @BUG()
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %25, %23, %21
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @CPS_PM_POWER_GATED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = call i64 (...) @cpu_pm_enter()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINTR, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %57

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @cps_pm_enter_state(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @CPS_PM_POWER_GATED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 (...) @cpu_pm_exit()
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ %50, %52 ], [ %54, %53 ]
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %38, %27
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @cpus_are_siblings(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @cpu_pm_enter(...) #1

declare dso_local i32 @cps_pm_enter_state(i32) #1

declare dso_local i32 @cpu_pm_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
