; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_raw.c_bind_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_raw.c_bind_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_device_data = type { %struct.block_device* }
%struct.block_device = type { i32 }

@max_raw_minors = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@raw_devices = common dso_local global %struct.raw_device_data* null, align 8
@raw_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @bind_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_get(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.raw_device_data*, align 8
  %7 = alloca %struct.block_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @max_raw_minors, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %10
  %18 = load %struct.raw_device_data*, %struct.raw_device_data** @raw_devices, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %18, i64 %20
  store %struct.raw_device_data* %21, %struct.raw_device_data** %6, align 8
  %22 = call i32 @mutex_lock(i32* @raw_mutex)
  %23 = load %struct.raw_device_data*, %struct.raw_device_data** %6, align 8
  %24 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %23, i32 0, i32 0
  %25 = load %struct.block_device*, %struct.block_device** %24, align 8
  store %struct.block_device* %25, %struct.block_device** %7, align 8
  %26 = load %struct.block_device*, %struct.block_device** %7, align 8
  %27 = icmp ne %struct.block_device* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.block_device*, %struct.block_device** %7, align 8
  %30 = getelementptr inbounds %struct.block_device, %struct.block_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = call i32 @mutex_unlock(i32* @raw_mutex)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
