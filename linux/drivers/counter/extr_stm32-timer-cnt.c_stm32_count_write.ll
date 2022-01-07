; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-timer-cnt.c_stm32_count_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-timer-cnt.c_stm32_count_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.stm32_timer_cnt* }
%struct.stm32_timer_cnt = type { i64, i32 }
%struct.counter_count = type { i32 }
%struct.counter_count_write_value = type { i32 }

@COUNTER_COUNT_POSITION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIM_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_count_write_value*)* @stm32_count_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_count_write(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_count_write_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca %struct.counter_count*, align 8
  %7 = alloca %struct.counter_count_write_value*, align 8
  %8 = alloca %struct.stm32_timer_cnt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %5, align 8
  store %struct.counter_count* %1, %struct.counter_count** %6, align 8
  store %struct.counter_count_write_value* %2, %struct.counter_count_write_value** %7, align 8
  %11 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %12 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %11, i32 0, i32 0
  %13 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %12, align 8
  store %struct.stm32_timer_cnt* %13, %struct.stm32_timer_cnt** %8, align 8
  %14 = load i32, i32* @COUNTER_COUNT_POSITION, align 4
  %15 = load %struct.counter_count_write_value*, %struct.counter_count_write_value** %7, align 8
  %16 = call i32 @counter_count_write_value_get(i64* %9, i32 %14, %struct.counter_count_write_value* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %8, align 8
  %24 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %21
  %31 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %8, align 8
  %32 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TIM_CNT, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @regmap_write(i32 %33, i32 %34, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %27, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @counter_count_write_value_get(i64*, i32, %struct.counter_count_write_value*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
