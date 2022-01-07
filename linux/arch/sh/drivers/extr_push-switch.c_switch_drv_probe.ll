; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/extr_push-switch.c_switch_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/extr_push-switch.c_switch_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.push_switch_platform_info* }
%struct.push_switch_platform_info = type { i64, i32, i32 }
%struct.push_switch = type { %struct.platform_device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i64 0, align 8
@dev_attr_switch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed creating device attrs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@switch_work_handler = common dso_local global i32 0, align 4
@switch_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @switch_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.push_switch_platform_info*, align 8
  %5 = alloca %struct.push_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.push_switch* @kzalloc(i32 16, i32 %8)
  store %struct.push_switch* %9, %struct.push_switch** %5, align 8
  %10 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %11 = icmp ne %struct.push_switch* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %109

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %105

30:                                               ; preds = %19
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %33, align 8
  store %struct.push_switch_platform_info* %34, %struct.push_switch_platform_info** %4, align 8
  %35 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %36 = icmp ne %struct.push_switch_platform_info* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %42 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %45 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %48 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %30
  %52 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %53 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  br label %57

55:                                               ; preds = %30
  %56 = load i64, i64* @DRV_NAME, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i64 [ %54, %51 ], [ %56, %55 ]
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = call i32 @request_irq(i32 %40, i32 %43, i32 %46, i64 %58, %struct.platform_device* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %105

67:                                               ; preds = %57
  %68 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %69 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @device_create_file(%struct.TYPE_3__* %74, i32* @dev_attr_switch)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @dev_err(%struct.TYPE_3__* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %101

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %88 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %87, i32 0, i32 2
  %89 = load i32, i32* @switch_work_handler, align 4
  %90 = call i32 @INIT_WORK(i32* %88, i32 %89)
  %91 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %92 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %91, i32 0, i32 1
  %93 = load i32, i32* @switch_timer, align 4
  %94 = call i32 @timer_setup(i32* %92, i32 %93, i32 0)
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %97 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %96, i32 0, i32 0
  store %struct.platform_device* %95, %struct.platform_device** %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %100 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.push_switch* %99)
  store i32 0, i32* %2, align 4
  br label %109

101:                                              ; preds = %79
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = call i32 @free_irq(i32 %102, %struct.platform_device* %103)
  br label %105

105:                                              ; preds = %101, %66, %27
  %106 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %107 = call i32 @kfree(%struct.push_switch* %106)
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %86, %16
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.push_switch* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i64, %struct.platform_device*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.push_switch*) #1

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.push_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
