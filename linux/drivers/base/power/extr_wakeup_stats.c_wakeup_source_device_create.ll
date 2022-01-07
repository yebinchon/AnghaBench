; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup_stats.c_wakeup_source_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup_stats.c_wakeup_source_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, i32, %struct.device*, i32, i32 }
%struct.wakeup_source = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wakeup_class = common dso_local global i32 0, align 4
@wakeup_source_groups = common dso_local global i32 0, align 4
@device_create_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"wakeup%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.device*, %struct.wakeup_source*)* @wakeup_source_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @wakeup_source_device_create(%struct.device* %0, %struct.wakeup_source* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wakeup_source*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.wakeup_source* %1, %struct.wakeup_source** %5, align 8
  store %struct.device* null, %struct.device** %6, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.device* @kzalloc(i32 32, i32 %10)
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @device_initialize(%struct.device* %18)
  %20 = call i32 @MKDEV(i32 0, i32 0)
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @wakeup_class, align 4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 3
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load i32, i32* @wakeup_source_groups, align 4
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @device_create_release, align 4
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.wakeup_source*, %struct.wakeup_source** %5, align 8
  %37 = call i32 @dev_set_drvdata(%struct.device* %35, %struct.wakeup_source* %36)
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @device_set_pm_not_required(%struct.device* %38)
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load %struct.wakeup_source*, %struct.wakeup_source** %5, align 8
  %43 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kobject_set_name(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %17
  br label %57

49:                                               ; preds = %17
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @device_add(%struct.device* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  %56 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %56, %struct.device** %3, align 8
  br label %62

57:                                               ; preds = %54, %48, %14
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @put_device(%struct.device* %58)
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.device* @ERR_PTR(i32 %60)
  store %struct.device* %61, %struct.device** %3, align 8
  br label %62

62:                                               ; preds = %57, %55
  %63 = load %struct.device*, %struct.device** %3, align 8
  ret %struct.device* %63
}

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.wakeup_source*) #1

declare dso_local i32 @device_set_pm_not_required(%struct.device*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
