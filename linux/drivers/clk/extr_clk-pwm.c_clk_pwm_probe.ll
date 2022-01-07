; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-pwm.c_clk_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-pwm.c_clk_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i8* }
%struct.clk_init_data = type { i8*, i64, i64, i32* }
%struct.clk_pwm = type { i32, %struct.TYPE_7__, %struct.pwm_device* }
%struct.TYPE_7__ = type { %struct.clk_init_data* }
%struct.pwm_device = type { i32 }
%struct.pwm_args = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid PWM period\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"clock-frequency does not match PWM period\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@clk_pwm_ops = common dso_local global i32 0, align 4
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clk_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.clk_init_data, align 8
  %6 = alloca %struct.clk_pwm*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca %struct.pwm_args, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.clk_pwm* @devm_kzalloc(%struct.TYPE_8__* %16, i32 24, i32 %17)
  store %struct.clk_pwm* %18, %struct.clk_pwm** %6, align 8
  %19 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %20 = icmp ne %struct.clk_pwm* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %130

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.pwm_device* @devm_pwm_get(%struct.TYPE_8__* %26, i32* null)
  store %struct.pwm_device* %27, %struct.pwm_device** %7, align 8
  %28 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %29 = call i64 @IS_ERR(%struct.pwm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %33 = call i32 @PTR_ERR(%struct.pwm_device* %32)
  store i32 %33, i32* %2, align 4
  br label %130

34:                                               ; preds = %24
  %35 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %36 = call i32 @pwm_get_args(%struct.pwm_device* %35, %struct.pwm_args* %8)
  %37 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %130

46:                                               ; preds = %34
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %49 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %48, i32 0, i32 0
  %50 = call i64 @of_property_read_u32(%struct.device_node* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @NSEC_PER_SEC, align 4
  %54 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %53, %55
  %57 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %58 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %52, %46
  %60 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NSEC_PER_SEC, align 4
  %63 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %64 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %62, %65
  %67 = icmp ne i32 %61, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NSEC_PER_SEC, align 4
  %72 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %73 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DIV_ROUND_UP(i32 %71, i32 %74)
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(%struct.TYPE_8__* %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %130

83:                                               ; preds = %68, %59
  %84 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %85 = call i32 @pwm_apply_args(%struct.pwm_device* %84)
  %86 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %87 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = ashr i32 %89, 1
  %91 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pwm_config(%struct.pwm_device* %86, i32 %90, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %2, align 4
  br label %130

98:                                               ; preds = %83
  %99 = load %struct.device_node*, %struct.device_node** %4, align 8
  %100 = getelementptr inbounds %struct.device_node, %struct.device_node* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %9, align 8
  %102 = load %struct.device_node*, %struct.device_node** %4, align 8
  %103 = call i32 @of_property_read_string(%struct.device_node* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %9)
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 0
  store i8* %104, i8** %105, align 8
  %106 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 3
  store i32* @clk_pwm_ops, i32** %106, align 8
  %107 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %110 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %111 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %110, i32 0, i32 2
  store %struct.pwm_device* %109, %struct.pwm_device** %111, align 8
  %112 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %113 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store %struct.clk_init_data* %5, %struct.clk_init_data** %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %118 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %117, i32 0, i32 1
  %119 = call i32 @devm_clk_hw_register(%struct.TYPE_8__* %116, %struct.TYPE_7__* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %98
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %2, align 4
  br label %130

124:                                              ; preds = %98
  %125 = load %struct.device_node*, %struct.device_node** %4, align 8
  %126 = load i32, i32* @of_clk_hw_simple_get, align 4
  %127 = load %struct.clk_pwm*, %struct.clk_pwm** %6, align 8
  %128 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %127, i32 0, i32 1
  %129 = call i32 @of_clk_add_hw_provider(%struct.device_node* %125, i32 %126, %struct.TYPE_7__* %128)
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %124, %122, %96, %77, %40, %31, %21
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.clk_pwm* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.pwm_device* @devm_pwm_get(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.pwm_device*) #1

declare dso_local i32 @pwm_get_args(%struct.pwm_device*, %struct.pwm_args*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @pwm_apply_args(%struct.pwm_device*) #1

declare dso_local i32 @pwm_config(%struct.pwm_device*, i32, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
