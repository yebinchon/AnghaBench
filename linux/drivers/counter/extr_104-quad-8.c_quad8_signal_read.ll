; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_signal_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_signal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i64 }
%struct.counter_signal = type { i32 }
%struct.counter_signal_read_value = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QUAD8_REG_INDEX_INPUT_LEVELS = common dso_local global i64 0, align 8
@COUNTER_SIGNAL_LEVEL_HIGH = common dso_local global i32 0, align 4
@COUNTER_SIGNAL_LEVEL_LOW = common dso_local global i32 0, align 4
@COUNTER_SIGNAL_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_signal*, %struct.counter_signal_read_value*)* @quad8_signal_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_signal_read(%struct.counter_device* %0, %struct.counter_signal* %1, %struct.counter_signal_read_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca %struct.counter_signal*, align 8
  %7 = alloca %struct.counter_signal_read_value*, align 8
  %8 = alloca %struct.quad8_iio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %5, align 8
  store %struct.counter_signal* %1, %struct.counter_signal** %6, align 8
  store %struct.counter_signal_read_value* %2, %struct.counter_signal_read_value** %7, align 8
  %11 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %12 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %11, i32 0, i32 0
  %13 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  store %struct.quad8_iio* %13, %struct.quad8_iio** %8, align 8
  %14 = load %struct.counter_signal*, %struct.counter_signal** %6, align 8
  %15 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.quad8_iio*, %struct.quad8_iio** %8, align 8
  %23 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QUAD8_REG_INDEX_INPUT_LEVELS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inb(i64 %26)
  %28 = load %struct.counter_signal*, %struct.counter_signal** %6, align 8
  %29 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 16
  %32 = call i32 @BIT(i32 %31)
  %33 = and i32 %27, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @COUNTER_SIGNAL_LEVEL_HIGH, align 4
  br label %40

38:                                               ; preds = %21
  %39 = load i32, i32* @COUNTER_SIGNAL_LEVEL_LOW, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %10, align 4
  %42 = load %struct.counter_signal_read_value*, %struct.counter_signal_read_value** %7, align 8
  %43 = load i32, i32* @COUNTER_SIGNAL_LEVEL, align 4
  %44 = call i32 @counter_signal_read_value_set(%struct.counter_signal_read_value* %42, i32 %43, i32* %10)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @counter_signal_read_value_set(%struct.counter_signal_read_value*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
