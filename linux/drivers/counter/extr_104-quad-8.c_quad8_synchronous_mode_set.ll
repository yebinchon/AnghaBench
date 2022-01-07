; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_synchronous_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_synchronous_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32*, i32, i64*, i32* }
%struct.counter_signal = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QUAD8_CTR_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_signal*, i64)* @quad8_synchronous_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_synchronous_mode_set(%struct.counter_device* %0, %struct.counter_signal* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca %struct.counter_signal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.quad8_iio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %5, align 8
  store %struct.counter_signal* %1, %struct.counter_signal** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %13 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %12, i32 0, i32 0
  %14 = load %struct.quad8_iio*, %struct.quad8_iio** %13, align 8
  store %struct.quad8_iio* %14, %struct.quad8_iio** %8, align 8
  %15 = load %struct.counter_signal*, %struct.counter_signal** %6, align 8
  %16 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 16
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %22 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = or i64 %20, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %32 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = mul i64 2, %35
  %37 = add i64 %34, %36
  %38 = add i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %3
  %43 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %44 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %65

53:                                               ; preds = %42, %3
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %56 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  %60 = load i32, i32* @QUAD8_CTR_IDR, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @outb(i32 %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %53, %50
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
