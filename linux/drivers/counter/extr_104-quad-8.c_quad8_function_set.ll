; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_function_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_function_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32*, i32*, i32*, i32*, i32*, i32 }
%struct.counter_count = type { i32 }

@QUAD8_COUNT_FUNCTION_PULSE_DIRECTION = common dso_local global i64 0, align 8
@QUAD8_CTR_IDR = common dso_local global i32 0, align 4
@QUAD8_CMR_QUADRATURE_X1 = common dso_local global i32 0, align 4
@QUAD8_CMR_QUADRATURE_X2 = common dso_local global i32 0, align 4
@QUAD8_CMR_QUADRATURE_X4 = common dso_local global i32 0, align 4
@QUAD8_CTR_CMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i64)* @quad8_function_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_function_set(%struct.counter_device* %0, %struct.counter_count* %1, i64 %2) #0 {
  %4 = alloca %struct.counter_device*, align 8
  %5 = alloca %struct.counter_count*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.quad8_iio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %4, align 8
  store %struct.counter_count* %1, %struct.counter_count** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.counter_device*, %struct.counter_device** %4, align 8
  %16 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %15, i32 0, i32 0
  %17 = load %struct.quad8_iio*, %struct.quad8_iio** %16, align 8
  store %struct.quad8_iio* %17, %struct.quad8_iio** %7, align 8
  %18 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %19 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %22 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %9, align 8
  %27 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %28 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %10, align 8
  %33 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %34 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %42 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %12, align 8
  %47 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %48 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %56 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 %57, %59
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @QUAD8_COUNT_FUNCTION_PULSE_DIRECTION, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %3
  %66 = load i32*, i32** %9, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 0, i32* %67, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32*, i32** %12, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* @QUAD8_CTR_IDR, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @outb(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %65
  br label %98

79:                                               ; preds = %3
  %80 = load i32*, i32** %9, align 8
  store i32 1, i32* %80, align 4
  %81 = load i64, i64* %6, align 8
  switch i64 %81, label %97 [
    i64 130, label %82
    i64 129, label %87
    i64 128, label %92
  ]

82:                                               ; preds = %79
  %83 = load i32*, i32** %10, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* @QUAD8_CMR_QUADRATURE_X1, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %97

87:                                               ; preds = %79
  %88 = load i32*, i32** %10, align 8
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* @QUAD8_CMR_QUADRATURE_X2, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %97

92:                                               ; preds = %79
  %93 = load i32*, i32** %10, align 8
  store i32 2, i32* %93, align 4
  %94 = load i32, i32* @QUAD8_CMR_QUADRATURE_X4, align 4
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %79, %92, %87, %82
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* @QUAD8_CTR_CMR, align 4
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @outb(i32 %101, i32 %102)
  ret i32 0
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
