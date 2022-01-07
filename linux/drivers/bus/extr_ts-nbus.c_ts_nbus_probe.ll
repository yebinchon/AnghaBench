; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_args = type { i32 }
%struct.ts_nbus = type { %struct.pwm_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unable to request PWM\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid PWM period\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ts_nbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_nbus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.pwm_args, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ts_nbus*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ts_nbus* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.ts_nbus* %13, %struct.ts_nbus** %7, align 8
  %14 = load %struct.ts_nbus*, %struct.ts_nbus** %7, align 8
  %15 = icmp ne %struct.ts_nbus* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = load %struct.ts_nbus*, %struct.ts_nbus** %7, align 8
  %21 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %20, i32 0, i32 1
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.ts_nbus*, %struct.ts_nbus** %7, align 8
  %25 = call i32 @ts_nbus_init_pdata(%struct.platform_device* %23, %struct.ts_nbus* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %94

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call %struct.pwm_device* @devm_pwm_get(%struct.device* %31, i32* null)
  store %struct.pwm_device* %32, %struct.pwm_device** %4, align 8
  %33 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %34 = call i64 @IS_ERR(%struct.pwm_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %38 = call i32 @PTR_ERR(%struct.pwm_device* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %94

48:                                               ; preds = %30
  %49 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %50 = call i32 @pwm_get_args(%struct.pwm_device* %49, %struct.pwm_args* %5)
  %51 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %94

60:                                               ; preds = %48
  %61 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %62 = call i32 @pwm_apply_args(%struct.pwm_device* %61)
  %63 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %64 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pwm_config(%struct.pwm_device* %63, i32 %65, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %94

73:                                               ; preds = %60
  %74 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %75 = call i32 @pwm_enable(%struct.pwm_device* %74)
  %76 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %77 = load %struct.ts_nbus*, %struct.ts_nbus** %7, align 8
  %78 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %77, i32 0, i32 0
  store %struct.pwm_device* %76, %struct.pwm_device** %78, align 8
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load %struct.ts_nbus*, %struct.ts_nbus** %7, align 8
  %81 = call i32 @dev_set_drvdata(%struct.device* %79, %struct.ts_nbus* %80)
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = getelementptr inbounds %struct.device, %struct.device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 @of_platform_populate(i32 %84, i32* null, i32* null, %struct.device* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %94

91:                                               ; preds = %73
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = call i32 @dev_info(%struct.device* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %89, %71, %54, %46, %28, %16
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.ts_nbus* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ts_nbus_init_pdata(%struct.platform_device*, %struct.ts_nbus*) #1

declare dso_local %struct.pwm_device* @devm_pwm_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.pwm_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pwm_get_args(%struct.pwm_device*, %struct.pwm_args*) #1

declare dso_local i32 @pwm_apply_args(%struct.pwm_device*) #1

declare dso_local i32 @pwm_config(%struct.pwm_device*, i32, i32) #1

declare dso_local i32 @pwm_enable(%struct.pwm_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ts_nbus*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
