; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_lo_simple_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_lo_simple_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { {}* }

@loop_ctl_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, i32, i64)* @lo_simple_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lo_simple_ioctl(%struct.loop_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = call i32 @mutex_lock_killable(i32* @loop_ctl_mutex)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %27 [
    i32 129, label %16
    i32 128, label %19
    i32 130, label %23
  ]

16:                                               ; preds = %14
  %17 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %18 = call i32 @loop_set_capacity(%struct.loop_device* %17)
  store i32 %18, i32* %8, align 4
  br label %47

19:                                               ; preds = %14
  %20 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @loop_set_dio(%struct.loop_device* %20, i64 %21)
  store i32 %22, i32* %8, align 4
  br label %47

23:                                               ; preds = %14
  %24 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @loop_set_block_size(%struct.loop_device* %24, i64 %25)
  store i32 %26, i32* %8, align 4
  br label %47

27:                                               ; preds = %14
  %28 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %29 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.loop_device*, i32, i64)**
  %31 = load i32 (%struct.loop_device*, i32, i64)*, i32 (%struct.loop_device*, i32, i64)** %30, align 8
  %32 = icmp ne i32 (%struct.loop_device*, i32, i64)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %35 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.loop_device*, i32, i64)**
  %37 = load i32 (%struct.loop_device*, i32, i64)*, i32 (%struct.loop_device*, i32, i64)** %36, align 8
  %38 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 %37(%struct.loop_device* %38, i32 %39, i64 %40)
  br label %45

42:                                               ; preds = %27
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  br label %45

45:                                               ; preds = %42, %33
  %46 = phi i32 [ %41, %33 ], [ %44, %42 ]
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %23, %19, %16
  %48 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @loop_set_capacity(%struct.loop_device*) #1

declare dso_local i32 @loop_set_dio(%struct.loop_device*, i64) #1

declare dso_local i32 @loop_set_block_size(%struct.loop_device*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
