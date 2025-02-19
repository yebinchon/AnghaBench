; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_action_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_action_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.stm32_lptim_cnt* }
%struct.stm32_lptim_cnt = type { i64 }
%struct.counter_count = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.counter_synapse = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@STM32_LPTIM_COUNTER_INCREASE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64)* @stm32_lptim_cnt_action_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_cnt_action_set(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_synapse* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca %struct.counter_synapse*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stm32_lptim_cnt*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store %struct.counter_count* %1, %struct.counter_count** %7, align 8
  store %struct.counter_synapse* %2, %struct.counter_synapse** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %14 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %13, i32 0, i32 0
  %15 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %14, align 8
  store %struct.stm32_lptim_cnt* %15, %struct.stm32_lptim_cnt** %10, align 8
  %16 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %10, align 8
  %17 = call i64 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %24 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %25 = call i32 @stm32_lptim_cnt_function_get(%struct.counter_device* %23, %struct.counter_count* %24, i64* %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %59

30:                                               ; preds = %22
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @STM32_LPTIM_COUNTER_INCREASE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load %struct.counter_synapse*, %struct.counter_synapse** %8, align 8
  %36 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %41 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %39, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load i64, i64* %9, align 8
  switch i64 %50, label %55 [
    i64 128, label %51
    i64 129, label %51
    i64 130, label %51
  ]

51:                                               ; preds = %49, %49, %49
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %10, align 8
  %54 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i32 0, i32* %5, align 4
  br label %59

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %34, %30
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %51, %28, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt*) #1

declare dso_local i32 @stm32_lptim_cnt_function_get(%struct.counter_device*, %struct.counter_count*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
