; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.stm32_lptim_cnt* }
%struct.stm32_lptim_cnt = type { i32 }
%struct.counter_count = type { i32 }
%struct.counter_count_read_value = type { i32 }

@STM32_LPTIM_CNT = common dso_local global i32 0, align 4
@COUNTER_COUNT_POSITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_count_read_value*)* @stm32_lptim_cnt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_cnt_read(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_count_read_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca %struct.counter_count*, align 8
  %7 = alloca %struct.counter_count_read_value*, align 8
  %8 = alloca %struct.stm32_lptim_cnt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %5, align 8
  store %struct.counter_count* %1, %struct.counter_count** %6, align 8
  store %struct.counter_count_read_value* %2, %struct.counter_count_read_value** %7, align 8
  %11 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %12 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %11, i32 0, i32 0
  %13 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  store %struct.stm32_lptim_cnt* %13, %struct.stm32_lptim_cnt** %8, align 8
  %14 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %8, align 8
  %15 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STM32_LPTIM_CNT, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load %struct.counter_count_read_value*, %struct.counter_count_read_value** %7, align 8
  %25 = load i32, i32* @COUNTER_COUNT_POSITION, align 4
  %26 = call i32 @counter_count_read_value_set(%struct.counter_count_read_value* %24, i32 %25, i32* %9)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @counter_count_read_value_set(%struct.counter_count_read_value*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
