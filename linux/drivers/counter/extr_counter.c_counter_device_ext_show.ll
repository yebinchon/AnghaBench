; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_ext_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_ext_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.counter_device_attr = type { %struct.counter_ext_unit* }
%struct.counter_ext_unit = type { %struct.counter_device_ext* }
%struct.counter_device_ext = type { i32, i32 (i32, i32, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @counter_device_ext_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_device_ext_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.counter_device_attr*, align 8
  %8 = alloca %struct.counter_ext_unit*, align 8
  %9 = alloca %struct.counter_device_ext*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %11 = call %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute* %10)
  store %struct.counter_device_attr* %11, %struct.counter_device_attr** %7, align 8
  %12 = load %struct.counter_device_attr*, %struct.counter_device_attr** %7, align 8
  %13 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %12, i32 0, i32 0
  %14 = load %struct.counter_ext_unit*, %struct.counter_ext_unit** %13, align 8
  store %struct.counter_ext_unit* %14, %struct.counter_ext_unit** %8, align 8
  %15 = load %struct.counter_ext_unit*, %struct.counter_ext_unit** %8, align 8
  %16 = getelementptr inbounds %struct.counter_ext_unit, %struct.counter_ext_unit* %15, i32 0, i32 0
  %17 = load %struct.counter_device_ext*, %struct.counter_device_ext** %16, align 8
  store %struct.counter_device_ext* %17, %struct.counter_device_ext** %9, align 8
  %18 = load %struct.counter_device_ext*, %struct.counter_device_ext** %9, align 8
  %19 = getelementptr inbounds %struct.counter_device_ext, %struct.counter_device_ext* %18, i32 0, i32 1
  %20 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %19, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_get_drvdata(%struct.device* %21)
  %23 = load %struct.counter_device_ext*, %struct.counter_device_ext** %9, align 8
  %24 = getelementptr inbounds %struct.counter_device_ext, %struct.counter_device_ext* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 %20(i32 %22, i32 %25, i8* %26)
  ret i32 %27
}

declare dso_local %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute*) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
