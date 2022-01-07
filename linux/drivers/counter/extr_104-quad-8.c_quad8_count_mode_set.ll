; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32, i64*, i32*, i64* }
%struct.counter_count = type { i32 }

@QUAD8_CTR_CMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i64)* @quad8_count_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_count_mode_set(%struct.counter_device* %0, %struct.counter_count* %1, i64 %2) #0 {
  %4 = alloca %struct.counter_device*, align 8
  %5 = alloca %struct.counter_count*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.quad8_iio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %4, align 8
  store %struct.counter_count* %1, %struct.counter_count** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.counter_device*, %struct.counter_device** %4, align 8
  %11 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %10, i32 0, i32 0
  %12 = load %struct.quad8_iio*, %struct.quad8_iio** %11, align 8
  store %struct.quad8_iio* %12, %struct.quad8_iio** %7, align 8
  %13 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %14 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %17 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %15, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %6, align 8
  switch i64 %22, label %27 [
    i64 129, label %23
    i64 128, label %24
    i64 130, label %25
    i64 131, label %26
  ]

23:                                               ; preds = %3
  store i64 0, i64* %6, align 8
  br label %27

24:                                               ; preds = %3
  store i64 1, i64* %6, align 8
  br label %27

25:                                               ; preds = %3
  store i64 2, i64* %6, align 8
  br label %27

26:                                               ; preds = %3
  store i64 3, i64* %6, align 8
  br label %27

27:                                               ; preds = %3, %26, %25, %24, %23
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %30 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %33 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  store i64 %28, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = shl i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %41 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %44 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %27
  %51 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %52 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %55 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = shl i32 %60, 3
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %50, %27
  %65 = load i32, i32* @QUAD8_CTR_CMR, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @outb(i32 %67, i32 %68)
  ret i32 0
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
