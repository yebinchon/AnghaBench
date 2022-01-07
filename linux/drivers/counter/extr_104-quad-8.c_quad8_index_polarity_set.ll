; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_index_polarity_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_index_polarity_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i64*, i32, i64* }
%struct.counter_signal = type { i32 }

@QUAD8_CTR_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_signal*, i64)* @quad8_index_polarity_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_index_polarity_set(%struct.counter_device* %0, %struct.counter_signal* %1, i64 %2) #0 {
  %4 = alloca %struct.counter_device*, align 8
  %5 = alloca %struct.counter_signal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.quad8_iio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %4, align 8
  store %struct.counter_signal* %1, %struct.counter_signal** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.counter_device*, %struct.counter_device** %4, align 8
  %12 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %11, i32 0, i32 0
  %13 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  store %struct.quad8_iio* %13, %struct.quad8_iio** %7, align 8
  %14 = load %struct.counter_signal*, %struct.counter_signal** %5, align 8
  %15 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %20 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = shl i64 %25, 1
  %27 = or i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %30 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 2, %33
  %35 = add i64 %32, %34
  %36 = add i64 %35, 1
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %40 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %38, i64* %43, align 8
  %44 = load i32, i32* @QUAD8_CTR_IDR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @outb(i32 %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
