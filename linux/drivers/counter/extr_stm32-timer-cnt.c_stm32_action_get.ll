; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-timer-cnt.c_stm32_action_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-timer-cnt.c_stm32_action_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { i32 }
%struct.counter_count = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.counter_synapse = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@STM32_SYNAPSE_ACTION_NONE = common dso_local global i64 0, align 8
@STM32_SYNAPSE_ACTION_BOTH_EDGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64*)* @stm32_action_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_action_get(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_synapse* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca %struct.counter_synapse*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store %struct.counter_count* %1, %struct.counter_count** %7, align 8
  store %struct.counter_synapse* %2, %struct.counter_synapse** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* @STM32_SYNAPSE_ACTION_NONE, align 8
  %13 = load i64*, i64** %9, align 8
  store i64 %12, i64* %13, align 8
  %14 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %15 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %16 = call i32 @stm32_count_function_get(%struct.counter_device* %14, %struct.counter_count* %15, i64* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  switch i64 %21, label %63 [
    i64 130, label %22
    i64 129, label %41
    i64 128, label %60
  ]

22:                                               ; preds = %20
  %23 = load %struct.counter_synapse*, %struct.counter_synapse** %8, align 8
  %24 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %29 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %27, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i64, i64* @STM32_SYNAPSE_ACTION_BOTH_EDGES, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %22
  br label %63

41:                                               ; preds = %20
  %42 = load %struct.counter_synapse*, %struct.counter_synapse** %8, align 8
  %43 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %48 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %46, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i64, i64* @STM32_SYNAPSE_ACTION_BOTH_EDGES, align 8
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %41
  br label %63

60:                                               ; preds = %20
  %61 = load i64, i64* @STM32_SYNAPSE_ACTION_BOTH_EDGES, align 8
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %20, %60, %59, %40
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @stm32_count_function_get(%struct.counter_device*, %struct.counter_count*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
