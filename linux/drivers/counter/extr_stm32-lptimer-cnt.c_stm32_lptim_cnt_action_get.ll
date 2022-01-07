; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_action_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_action_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.stm32_lptim_cnt* }
%struct.stm32_lptim_cnt = type { i64 }
%struct.counter_count = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.counter_synapse = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@STM32_LPTIM_SYNAPSE_ACTION_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64*)* @stm32_lptim_cnt_action_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_cnt_action_get(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_synapse* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca %struct.counter_synapse*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.stm32_lptim_cnt*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store %struct.counter_count* %1, %struct.counter_count** %7, align 8
  store %struct.counter_synapse* %2, %struct.counter_synapse** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %14 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %13, i32 0, i32 0
  %15 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %14, align 8
  store %struct.stm32_lptim_cnt* %15, %struct.stm32_lptim_cnt** %10, align 8
  %16 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %17 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %18 = call i32 @stm32_lptim_cnt_function_get(%struct.counter_device* %16, %struct.counter_count* %17, i64* %11)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %57

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %54 [
    i64 129, label %25
    i64 128, label %49
  ]

25:                                               ; preds = %23
  %26 = load %struct.counter_synapse*, %struct.counter_synapse** %8, align 8
  %27 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %32 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %30, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %10, align 8
  %42 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %48

45:                                               ; preds = %25
  %46 = load i64, i64* @STM32_LPTIM_SYNAPSE_ACTION_NONE, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  store i32 0, i32* %5, align 4
  br label %57

49:                                               ; preds = %23
  %50 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %10, align 8
  %51 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %5, align 4
  br label %57

54:                                               ; preds = %23
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %49, %48, %21
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @stm32_lptim_cnt_function_get(%struct.counter_device*, %struct.counter_count*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
