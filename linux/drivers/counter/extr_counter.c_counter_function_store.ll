; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_function_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_function_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.counter_device_attr = type { %struct.counter_count_unit* }
%struct.counter_count_unit = type { %struct.counter_count* }
%struct.counter_count = type { i64, i32*, i64 }
%struct.counter_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.counter_device*, %struct.counter_count*, i64)* }

@counter_count_function_str = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @counter_function_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_function_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.counter_device_attr*, align 8
  %11 = alloca %struct.counter_count_unit*, align 8
  %12 = alloca %struct.counter_count*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.counter_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute* %18)
  store %struct.counter_device_attr* %19, %struct.counter_device_attr** %10, align 8
  %20 = load %struct.counter_device_attr*, %struct.counter_device_attr** %10, align 8
  %21 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %20, i32 0, i32 0
  %22 = load %struct.counter_count_unit*, %struct.counter_count_unit** %21, align 8
  store %struct.counter_count_unit* %22, %struct.counter_count_unit** %11, align 8
  %23 = load %struct.counter_count_unit*, %struct.counter_count_unit** %11, align 8
  %24 = getelementptr inbounds %struct.counter_count_unit, %struct.counter_count_unit* %23, i32 0, i32 0
  %25 = load %struct.counter_count*, %struct.counter_count** %24, align 8
  store %struct.counter_count* %25, %struct.counter_count** %12, align 8
  %26 = load %struct.counter_count*, %struct.counter_count** %12, align 8
  %27 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call %struct.counter_device* @dev_get_drvdata(%struct.device* %29)
  store %struct.counter_device* %30, %struct.counter_device** %17, align 8
  store i64 0, i64* %14, align 8
  br label %31

31:                                               ; preds = %52, %4
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.counter_count*, %struct.counter_count** %12, align 8
  %37 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32*, i32** @counter_count_function_str, align 8
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @sysfs_streq(i8* %42, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %55

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %14, align 8
  br label %31

55:                                               ; preds = %50, %31
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %82

62:                                               ; preds = %55
  %63 = load %struct.counter_device*, %struct.counter_device** %17, align 8
  %64 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.counter_device*, %struct.counter_count*, i64)*, i32 (%struct.counter_device*, %struct.counter_count*, i64)** %66, align 8
  %68 = load %struct.counter_device*, %struct.counter_device** %17, align 8
  %69 = load %struct.counter_count*, %struct.counter_count** %12, align 8
  %70 = load i64, i64* %14, align 8
  %71 = call i32 %67(%struct.counter_device* %68, %struct.counter_count* %69, i64 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %5, align 4
  br label %82

76:                                               ; preds = %62
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.counter_count*, %struct.counter_count** %12, align 8
  %79 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %74, %59
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute*) #1

declare dso_local %struct.counter_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
