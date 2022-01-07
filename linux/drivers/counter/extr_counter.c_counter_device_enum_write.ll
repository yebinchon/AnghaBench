; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_enum_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_enum_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { i32 }
%struct.counter_device_enum_ext = type { i32 (%struct.counter_device.0*, i64)*, i32, i32 }
%struct.counter_device.0 = type opaque

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @counter_device_enum_write(%struct.counter_device* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.counter_device_enum_ext*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.counter_device_enum_ext*
  store %struct.counter_device_enum_ext* %14, %struct.counter_device_enum_ext** %10, align 8
  %15 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %10, align 8
  %16 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %15, i32 0, i32 0
  %17 = load i32 (%struct.counter_device.0*, i64)*, i32 (%struct.counter_device.0*, i64)** %16, align 8
  %18 = icmp ne i32 (%struct.counter_device.0*, i64)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %50

22:                                               ; preds = %4
  %23 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %10, align 8
  %24 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %10, align 8
  %27 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @__sysfs_match_string(i32 %25, i32 %28, i8* %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %5, align 8
  br label %50

35:                                               ; preds = %22
  %36 = load %struct.counter_device_enum_ext*, %struct.counter_device_enum_ext** %10, align 8
  %37 = getelementptr inbounds %struct.counter_device_enum_ext, %struct.counter_device_enum_ext* %36, i32 0, i32 0
  %38 = load i32 (%struct.counter_device.0*, i64)*, i32 (%struct.counter_device.0*, i64)** %37, align 8
  %39 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %40 = bitcast %struct.counter_device* %39 to %struct.counter_device.0*
  %41 = load i64, i64* %11, align 8
  %42 = call i32 %38(%struct.counter_device.0* %40, i64 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %5, align 8
  br label %50

48:                                               ; preds = %35
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %48, %45, %33, %19
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i64 @__sysfs_match_string(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
