; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sh_tmu_device = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"kept as earlytimer\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_tmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_tmu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.sh_tmu_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sh_tmu_device* %7, %struct.sh_tmu_device** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i64 @is_early_platform_device(%struct.platform_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_set_active(i32* %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_enable(i32* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %20 = icmp ne %struct.sh_tmu_device* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %52

25:                                               ; preds = %18
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.sh_tmu_device* @kzalloc(i32 16, i32 %26)
  store %struct.sh_tmu_device* %27, %struct.sh_tmu_device** %4, align 8
  %28 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %29 = icmp eq %struct.sh_tmu_device* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %71

33:                                               ; preds = %25
  %34 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @sh_tmu_setup(%struct.sh_tmu_device* %34, %struct.platform_device* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %41 = call i32 @kfree(%struct.sh_tmu_device* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_idle(i32* %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %71

46:                                               ; preds = %33
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i64 @is_early_platform_device(%struct.platform_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %71

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %21
  %53 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %54 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %59 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57, %52
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @pm_runtime_irq_safe(i32* %64)
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @pm_runtime_idle(i32* %68)
  br label %70

70:                                               ; preds = %66, %62
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %50, %39, %30
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.sh_tmu_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @is_early_platform_device(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.sh_tmu_device* @kzalloc(i32, i32) #1

declare dso_local i32 @sh_tmu_setup(%struct.sh_tmu_device*, %struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.sh_tmu_device*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i32 @pm_runtime_irq_safe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
