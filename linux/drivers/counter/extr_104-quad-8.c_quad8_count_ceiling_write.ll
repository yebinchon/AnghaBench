; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_ceiling_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_ceiling_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32* }
%struct.counter_count = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.counter_device*, %struct.counter_count*, i8*, i8*, i64)* @quad8_count_ceiling_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quad8_count_ceiling_write(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.counter_device*, align 8
  %8 = alloca %struct.counter_count*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.quad8_iio*, align 8
  store %struct.counter_device* %0, %struct.counter_device** %7, align 8
  store %struct.counter_count* %1, %struct.counter_count** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.counter_device*, %struct.counter_device** %7, align 8
  %14 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %13, i32 0, i32 0
  %15 = load %struct.quad8_iio*, %struct.quad8_iio** %14, align 8
  store %struct.quad8_iio* %15, %struct.quad8_iio** %12, align 8
  %16 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  %17 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %20 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %31 [
    i32 1, label %24
    i32 3, label %24
  ]

24:                                               ; preds = %5, %5
  %25 = load %struct.counter_device*, %struct.counter_device** %7, align 8
  %26 = load %struct.counter_count*, %struct.counter_count** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @quad8_count_preset_write(%struct.counter_device* %25, %struct.counter_count* %26, i8* %27, i8* %28, i64 %29)
  store i64 %30, i64* %6, align 8
  br label %33

31:                                               ; preds = %5
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

declare dso_local i64 @quad8_count_preset_write(%struct.counter_device*, %struct.counter_count*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
