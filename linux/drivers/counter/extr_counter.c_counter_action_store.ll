; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_action_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_action_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.counter_device_attr = type { %struct.counter_action_unit* }
%struct.counter_action_unit = type { %struct.counter_count*, %struct.counter_synapse* }
%struct.counter_count = type { i32 }
%struct.counter_synapse = type { i64, i32*, i64 }
%struct.counter_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64)* }

@counter_synapse_action_str = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @counter_action_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_action_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.counter_device_attr*, align 8
  %11 = alloca %struct.counter_action_unit*, align 8
  %12 = alloca %struct.counter_synapse*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.counter_device*, align 8
  %18 = alloca %struct.counter_count*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute* %19)
  store %struct.counter_device_attr* %20, %struct.counter_device_attr** %10, align 8
  %21 = load %struct.counter_device_attr*, %struct.counter_device_attr** %10, align 8
  %22 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %21, i32 0, i32 0
  %23 = load %struct.counter_action_unit*, %struct.counter_action_unit** %22, align 8
  store %struct.counter_action_unit* %23, %struct.counter_action_unit** %11, align 8
  %24 = load %struct.counter_action_unit*, %struct.counter_action_unit** %11, align 8
  %25 = getelementptr inbounds %struct.counter_action_unit, %struct.counter_action_unit* %24, i32 0, i32 1
  %26 = load %struct.counter_synapse*, %struct.counter_synapse** %25, align 8
  store %struct.counter_synapse* %26, %struct.counter_synapse** %12, align 8
  %27 = load %struct.counter_synapse*, %struct.counter_synapse** %12, align 8
  %28 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call %struct.counter_device* @dev_get_drvdata(%struct.device* %30)
  store %struct.counter_device* %31, %struct.counter_device** %17, align 8
  %32 = load %struct.counter_action_unit*, %struct.counter_action_unit** %11, align 8
  %33 = getelementptr inbounds %struct.counter_action_unit, %struct.counter_action_unit* %32, i32 0, i32 0
  %34 = load %struct.counter_count*, %struct.counter_count** %33, align 8
  store %struct.counter_count* %34, %struct.counter_count** %18, align 8
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %56, %4
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load %struct.counter_synapse*, %struct.counter_synapse** %12, align 8
  %41 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32*, i32** @counter_synapse_action_str, align 8
  %48 = load i32, i32* %15, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @sysfs_streq(i8* %46, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %59

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %13, align 8
  br label %35

59:                                               ; preds = %54, %35
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %87

66:                                               ; preds = %59
  %67 = load %struct.counter_device*, %struct.counter_device** %17, align 8
  %68 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64)*, i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64)** %70, align 8
  %72 = load %struct.counter_device*, %struct.counter_device** %17, align 8
  %73 = load %struct.counter_count*, %struct.counter_count** %18, align 8
  %74 = load %struct.counter_synapse*, %struct.counter_synapse** %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 %71(%struct.counter_device* %72, %struct.counter_count* %73, %struct.counter_synapse* %74, i64 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %5, align 4
  br label %87

81:                                               ; preds = %66
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.counter_synapse*, %struct.counter_synapse** %12, align 8
  %84 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %79, %63
  %88 = load i32, i32* %5, align 4
  ret i32 %88
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
