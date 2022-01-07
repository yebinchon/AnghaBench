; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_ext_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_ext_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.counter_device_attr = type { %struct.counter_ext_unit* }
%struct.counter_ext_unit = type { %struct.counter_device_ext* }
%struct.counter_device_ext = type { i32, i32 (i32, i32, i8*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @counter_device_ext_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_device_ext_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.counter_device_attr*, align 8
  %10 = alloca %struct.counter_ext_unit*, align 8
  %11 = alloca %struct.counter_device_ext*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute* %12)
  store %struct.counter_device_attr* %13, %struct.counter_device_attr** %9, align 8
  %14 = load %struct.counter_device_attr*, %struct.counter_device_attr** %9, align 8
  %15 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %14, i32 0, i32 0
  %16 = load %struct.counter_ext_unit*, %struct.counter_ext_unit** %15, align 8
  store %struct.counter_ext_unit* %16, %struct.counter_ext_unit** %10, align 8
  %17 = load %struct.counter_ext_unit*, %struct.counter_ext_unit** %10, align 8
  %18 = getelementptr inbounds %struct.counter_ext_unit, %struct.counter_ext_unit* %17, i32 0, i32 0
  %19 = load %struct.counter_device_ext*, %struct.counter_device_ext** %18, align 8
  store %struct.counter_device_ext* %19, %struct.counter_device_ext** %11, align 8
  %20 = load %struct.counter_device_ext*, %struct.counter_device_ext** %11, align 8
  %21 = getelementptr inbounds %struct.counter_device_ext, %struct.counter_device_ext* %20, i32 0, i32 1
  %22 = load i32 (i32, i32, i8*, i64)*, i32 (i32, i32, i8*, i64)** %21, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_get_drvdata(%struct.device* %23)
  %25 = load %struct.counter_device_ext*, %struct.counter_device_ext** %11, align 8
  %26 = getelementptr inbounds %struct.counter_device_ext, %struct.counter_device_ext* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 %22(i32 %24, i32 %27, i8* %28, i64 %29)
  ret i32 %30
}

declare dso_local %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute*) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
