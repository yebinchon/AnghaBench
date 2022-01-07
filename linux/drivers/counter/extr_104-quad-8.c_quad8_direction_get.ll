; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_direction_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_direction_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32 }
%struct.counter_count = type { i32 }

@QUAD8_FLAG_UD = common dso_local global i32 0, align 4
@COUNTER_COUNT_DIRECTION_FORWARD = common dso_local global i32 0, align 4
@COUNTER_COUNT_DIRECTION_BACKWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.counter_device*, %struct.counter_count*, i32*)* @quad8_direction_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quad8_direction_get(%struct.counter_device* %0, %struct.counter_count* %1, i32* %2) #0 {
  %4 = alloca %struct.counter_device*, align 8
  %5 = alloca %struct.counter_count*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.quad8_iio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %4, align 8
  store %struct.counter_count* %1, %struct.counter_count** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.counter_device*, %struct.counter_device** %4, align 8
  %11 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %10, i32 0, i32 0
  %12 = load %struct.quad8_iio*, %struct.quad8_iio** %11, align 8
  store %struct.quad8_iio* %12, %struct.quad8_iio** %7, align 8
  %13 = load %struct.quad8_iio*, %struct.quad8_iio** %7, align 8
  %14 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %17 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %15, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @inb(i32 %22)
  %24 = load i32, i32* @QUAD8_FLAG_UD, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @COUNTER_COUNT_DIRECTION_FORWARD, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @COUNTER_COUNT_DIRECTION_BACKWARD, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  ret void
}

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
