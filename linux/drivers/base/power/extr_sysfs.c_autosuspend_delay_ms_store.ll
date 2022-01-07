; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_sysfs.c_autosuspend_delay_ms_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_sysfs.c_autosuspend_delay_ms_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device_attribute = type { i32 }

@EIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @autosuspend_delay_ms_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @autosuspend_delay_ms_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @EIO, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %41

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtol(i8* %20, i32 10, i64* %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = trunc i64 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %19
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %41

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @device_lock(%struct.device* %33)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %35, i64 %36)
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @device_unlock(%struct.device* %38)
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %32, %29, %16
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i64) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
