; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_resources_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq-dt.c_resources_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator = type { i32 }
%struct.clk = type opaque

@.str = private unnamed_addr constant [27 x i8] c"failed to get cpu0 device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"clock not ready, retry\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"cpu0 regulator not ready, retry\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"no regulator for cpu0: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @resources_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resources_available() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %5, align 4
  %7 = call %struct.device* @get_cpu_device(i32 0)
  store %struct.device* %7, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %71

14:                                               ; preds = %0
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = call %struct.regulator* @clk_get(%struct.device* %15, i32* null)
  %17 = bitcast %struct.regulator* %16 to %struct.clk*
  store %struct.clk* %17, %struct.clk** %4, align 8
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = bitcast %struct.clk* %18 to %struct.regulator*
  %20 = call i32 @PTR_ERR_OR_ZERO(%struct.regulator* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %1, align 4
  br label %71

37:                                               ; preds = %14
  %38 = load %struct.clk*, %struct.clk** %4, align 8
  %39 = bitcast %struct.clk* %38 to %struct.regulator*
  %40 = call i32 @clk_put(%struct.regulator* %39)
  %41 = load %struct.device*, %struct.device** %2, align 8
  %42 = call i8* @find_supply_name(%struct.device* %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %71

46:                                               ; preds = %37
  %47 = load %struct.device*, %struct.device** %2, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call %struct.regulator* @regulator_get_optional(%struct.device* %47, i8* %48)
  store %struct.regulator* %49, %struct.regulator** %3, align 8
  %50 = load %struct.regulator*, %struct.regulator** %3, align 8
  %51 = call i32 @PTR_ERR_OR_ZERO(%struct.regulator* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.device*, %struct.device** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %1, align 4
  br label %71

68:                                               ; preds = %46
  %69 = load %struct.regulator*, %struct.regulator** %3, align 8
  %70 = call i32 @regulator_put(%struct.regulator* %69)
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %68, %66, %45, %35, %10
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.regulator* @clk_get(%struct.device*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.regulator*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_put(%struct.regulator*) #1

declare dso_local i8* @find_supply_name(%struct.device*) #1

declare dso_local %struct.regulator* @regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @regulator_put(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
