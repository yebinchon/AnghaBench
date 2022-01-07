; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_clr_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_clr_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i32, i32 }

@loop_ctl_mutex = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@LO_FLAGS_AUTOCLEAR = common dso_local global i32 0, align 4
@Lo_rundown = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*)* @loop_clr_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_clr_fd(%struct.loop_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loop_device*, align 8
  %4 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %3, align 8
  %5 = call i32 @mutex_lock_killable(i32* @loop_ctl_mutex)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %12 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @Lo_bound, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %10
  %21 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %22 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %21, i32 0, i32 2
  %23 = call i32 @atomic_read(i32* %22)
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @LO_FLAGS_AUTOCLEAR, align 4
  %27 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %28 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  store i32 0, i32* %2, align 4
  br label %39

32:                                               ; preds = %20
  %33 = load i64, i64* @Lo_rundown, align 8
  %34 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %35 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %37 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %38 = call i32 @__loop_clr_fd(%struct.loop_device* %37, i32 0)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %25, %16, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__loop_clr_fd(%struct.loop_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
