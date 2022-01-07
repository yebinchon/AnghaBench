; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_action_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_action_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.counter_device_attr = type { %struct.counter_action_unit* }
%struct.counter_action_unit = type { %struct.counter_synapse*, %struct.counter_count* }
%struct.counter_synapse = type { i64, i32* }
%struct.counter_count = type { i32 }
%struct.counter_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64*)* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@counter_synapse_action_str = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @counter_action_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_action_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.counter_device_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.counter_device*, align 8
  %11 = alloca %struct.counter_action_unit*, align 8
  %12 = alloca %struct.counter_count*, align 8
  %13 = alloca %struct.counter_synapse*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute* %16)
  store %struct.counter_device_attr* %17, %struct.counter_device_attr** %8, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.counter_device* @dev_get_drvdata(%struct.device* %18)
  store %struct.counter_device* %19, %struct.counter_device** %10, align 8
  %20 = load %struct.counter_device_attr*, %struct.counter_device_attr** %8, align 8
  %21 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %20, i32 0, i32 0
  %22 = load %struct.counter_action_unit*, %struct.counter_action_unit** %21, align 8
  store %struct.counter_action_unit* %22, %struct.counter_action_unit** %11, align 8
  %23 = load %struct.counter_action_unit*, %struct.counter_action_unit** %11, align 8
  %24 = getelementptr inbounds %struct.counter_action_unit, %struct.counter_action_unit* %23, i32 0, i32 1
  %25 = load %struct.counter_count*, %struct.counter_count** %24, align 8
  store %struct.counter_count* %25, %struct.counter_count** %12, align 8
  %26 = load %struct.counter_action_unit*, %struct.counter_action_unit** %11, align 8
  %27 = getelementptr inbounds %struct.counter_action_unit, %struct.counter_action_unit* %26, i32 0, i32 0
  %28 = load %struct.counter_synapse*, %struct.counter_synapse** %27, align 8
  store %struct.counter_synapse* %28, %struct.counter_synapse** %13, align 8
  %29 = load %struct.counter_device*, %struct.counter_device** %10, align 8
  %30 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64*)*, i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64*)** %32, align 8
  %34 = load %struct.counter_device*, %struct.counter_device** %10, align 8
  %35 = load %struct.counter_count*, %struct.counter_count** %12, align 8
  %36 = load %struct.counter_synapse*, %struct.counter_synapse** %13, align 8
  %37 = call i32 %33(%struct.counter_device* %34, %struct.counter_count* %35, %struct.counter_synapse* %36, i64* %14)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %59

42:                                               ; preds = %3
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.counter_synapse*, %struct.counter_synapse** %13, align 8
  %45 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.counter_synapse*, %struct.counter_synapse** %13, align 8
  %47 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i8**, i8*** @counter_synapse_action_str, align 8
  %54 = load i32, i32* %15, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %42, %40
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.counter_device_attr* @to_counter_attr(%struct.device_attribute*) #1

declare dso_local %struct.counter_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
