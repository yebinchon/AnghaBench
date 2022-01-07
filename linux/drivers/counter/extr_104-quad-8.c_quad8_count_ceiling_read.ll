; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_ceiling_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_count_ceiling_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i32* }
%struct.counter_count = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"33554431\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i8*, i8*)* @quad8_count_ceiling_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_count_ceiling_read(%struct.counter_device* %0, %struct.counter_count* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.quad8_iio*, align 8
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store %struct.counter_count* %1, %struct.counter_count** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %12 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %11, i32 0, i32 0
  %13 = load %struct.quad8_iio*, %struct.quad8_iio** %12, align 8
  store %struct.quad8_iio* %13, %struct.quad8_iio** %10, align 8
  %14 = load %struct.quad8_iio*, %struct.quad8_iio** %10, align 8
  %15 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %18 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %28 [
    i32 1, label %22
    i32 3, label %22
  ]

22:                                               ; preds = %4, %4
  %23 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %24 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @quad8_count_preset_read(%struct.counter_device* %23, %struct.counter_count* %24, i8* %25, i8* %26)
  store i32 %27, i32* %5, align 4
  br label %31

28:                                               ; preds = %4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @quad8_count_preset_read(%struct.counter_device*, %struct.counter_count*, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
