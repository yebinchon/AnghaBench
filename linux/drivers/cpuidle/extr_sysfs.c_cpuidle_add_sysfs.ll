; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_sysfs.c_cpuidle_add_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_sysfs.c_cpuidle_add_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { %struct.cpuidle_device_kobj*, i64 }
%struct.cpuidle_device_kobj = type { i32, i32, %struct.cpuidle_device* }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ktype_cpuidle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cpuidle\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_add_sysfs(%struct.cpuidle_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca %struct.cpuidle_device_kobj*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  %7 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %8 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.device* @get_cpu_device(i64 %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.cpuidle_device_kobj* @kzalloc(i32 16, i32 %17)
  store %struct.cpuidle_device_kobj* %18, %struct.cpuidle_device_kobj** %4, align 8
  %19 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %4, align 8
  %20 = icmp ne %struct.cpuidle_device_kobj* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %16
  %25 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %26 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %4, align 8
  %27 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %26, i32 0, i32 2
  store %struct.cpuidle_device* %25, %struct.cpuidle_device** %27, align 8
  %28 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %4, align 8
  %29 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %30 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %29, i32 0, i32 0
  store %struct.cpuidle_device_kobj* %28, %struct.cpuidle_device_kobj** %30, align 8
  %31 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %4, align 8
  %32 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %31, i32 0, i32 1
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %4, align 8
  %35 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %34, i32 0, i32 0
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = call i32 @kobject_init_and_add(i32* %35, i32* @ktype_cpuidle, i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %4, align 8
  %43 = call i32 @kfree(%struct.cpuidle_device_kobj* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %24
  %46 = load %struct.cpuidle_device_kobj*, %struct.cpuidle_device_kobj** %4, align 8
  %47 = getelementptr inbounds %struct.cpuidle_device_kobj, %struct.cpuidle_device_kobj* %46, i32 0, i32 0
  %48 = load i32, i32* @KOBJ_ADD, align 4
  %49 = call i32 @kobject_uevent(i32* %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %41, %21, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.device* @get_cpu_device(i64) #1

declare dso_local %struct.cpuidle_device_kobj* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @kfree(%struct.cpuidle_device_kobj*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
