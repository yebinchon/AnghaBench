; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.counter_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_count_read_value*)* }
%struct.counter_count = type { i32 }
%struct.counter_count_read_value = type { i8*, i32 }
%struct.counter_device_attr = type { %struct.counter_count_unit* }
%struct.counter_count_unit = type { %struct.counter_count* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @counter_count_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_count_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.counter_device*, align 8
  %9 = alloca %struct.counter_device_attr*, align 8
  %10 = alloca %struct.counter_count_unit*, align 8
  %11 = alloca %struct.counter_count*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.counter_count_read_value, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.counter_device* @dev_get_drvdata(%struct.device* %14)
  store %struct.counter_device* %15, %struct.counter_device** %8, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute* %16)
  store %struct.counter_device_attr* %17, %struct.counter_device_attr** %9, align 8
  %18 = load %struct.counter_device_attr*, %struct.counter_device_attr** %9, align 8
  %19 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %18, i32 0, i32 0
  %20 = load %struct.counter_count_unit*, %struct.counter_count_unit** %19, align 8
  store %struct.counter_count_unit* %20, %struct.counter_count_unit** %10, align 8
  %21 = load %struct.counter_count_unit*, %struct.counter_count_unit** %10, align 8
  %22 = getelementptr inbounds %struct.counter_count_unit, %struct.counter_count_unit* %21, i32 0, i32 0
  %23 = load %struct.counter_count*, %struct.counter_count** %22, align 8
  store %struct.counter_count* %23, %struct.counter_count** %11, align 8
  %24 = getelementptr inbounds %struct.counter_count_read_value, %struct.counter_count_read_value* %13, i32 0, i32 0
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.counter_count_read_value, %struct.counter_count_read_value* %13, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.counter_device*, %struct.counter_device** %8, align 8
  %28 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_count_read_value*)*, i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_count_read_value*)** %30, align 8
  %32 = load %struct.counter_device*, %struct.counter_device** %8, align 8
  %33 = load %struct.counter_count*, %struct.counter_count** %11, align 8
  %34 = call i32 %31(%struct.counter_device* %32, %struct.counter_count* %33, %struct.counter_count_read_value* %13)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.counter_count_read_value, %struct.counter_count_read_value* %13, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %37
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.counter_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
