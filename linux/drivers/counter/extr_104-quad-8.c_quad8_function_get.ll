; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_function_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_function_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32*, i32* }
%struct.counter_count = type { i32 }

@QUAD8_COUNT_FUNCTION_QUADRATURE_X1 = common dso_local global i64 0, align 8
@QUAD8_COUNT_FUNCTION_QUADRATURE_X2 = common dso_local global i64 0, align 8
@QUAD8_COUNT_FUNCTION_QUADRATURE_X4 = common dso_local global i64 0, align 8
@QUAD8_COUNT_FUNCTION_PULSE_DIRECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i64*)* @quad8_function_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_function_get(%struct.counter_device* %0, %struct.counter_count* %1, i64* %2) #0 {
  %4 = alloca %struct.counter_device*, align 8
  %5 = alloca %struct.counter_count*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.quad8_iio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %4, align 8
  store %struct.counter_count* %1, %struct.counter_count** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.counter_device*, %struct.counter_device** %4, align 8
  %12 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %11, i32 0, i32 0
  %13 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  store %struct.quad8_iio* %13, %struct.quad8_iio** %7, align 8
  %14 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %15 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %18 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %25 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %44 [
    i32 0, label %35
    i32 1, label %38
    i32 2, label %41
  ]

35:                                               ; preds = %33
  %36 = load i64, i64* @QUAD8_COUNT_FUNCTION_QUADRATURE_X1, align 8
  %37 = load i64*, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  br label %44

38:                                               ; preds = %33
  %39 = load i64, i64* @QUAD8_COUNT_FUNCTION_QUADRATURE_X2, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  br label %44

41:                                               ; preds = %33
  %42 = load i64, i64* @QUAD8_COUNT_FUNCTION_QUADRATURE_X4, align 8
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %33, %41, %38, %35
  br label %48

45:                                               ; preds = %3
  %46 = load i64, i64* @QUAD8_COUNT_FUNCTION_PULSE_DIRECTION, align 8
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %44
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
