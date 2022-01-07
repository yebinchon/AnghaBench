; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32* }
%struct.counter_count = type { i64 }

@COUNTER_COUNT_MODE_NORMAL = common dso_local global i64 0, align 8
@COUNTER_COUNT_MODE_RANGE_LIMIT = common dso_local global i64 0, align 8
@COUNTER_COUNT_MODE_NON_RECYCLE = common dso_local global i64 0, align 8
@COUNTER_COUNT_MODE_MODULO_N = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i64*)* @quad8_count_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_count_mode_get(%struct.counter_device* %0, %struct.counter_count* %1, i64* %2) #0 {
  %4 = alloca %struct.counter_device*, align 8
  %5 = alloca %struct.counter_count*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.quad8_iio*, align 8
  store %struct.counter_device* %0, %struct.counter_device** %4, align 8
  store %struct.counter_count* %1, %struct.counter_count** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.counter_device*, %struct.counter_device** %4, align 8
  %9 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %8, i32 0, i32 0
  %10 = load %struct.quad8_iio*, %struct.quad8_iio** %9, align 8
  store %struct.quad8_iio* %10, %struct.quad8_iio** %7, align 8
  %11 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %12 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %15 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %31 [
    i32 0, label %19
    i32 1, label %22
    i32 2, label %25
    i32 3, label %28
  ]

19:                                               ; preds = %3
  %20 = load i64, i64* @COUNTER_COUNT_MODE_NORMAL, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 %20, i64* %21, align 8
  br label %31

22:                                               ; preds = %3
  %23 = load i64, i64* @COUNTER_COUNT_MODE_RANGE_LIMIT, align 8
  %24 = load i64*, i64** %6, align 8
  store i64 %23, i64* %24, align 8
  br label %31

25:                                               ; preds = %3
  %26 = load i64, i64* @COUNTER_COUNT_MODE_NON_RECYCLE, align 8
  %27 = load i64*, i64** %6, align 8
  store i64 %26, i64* %27, align 8
  br label %31

28:                                               ; preds = %3
  %29 = load i64, i64* @COUNTER_COUNT_MODE_MODULO_N, align 8
  %30 = load i64*, i64** %6, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %3, %28, %25, %22, %19
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
