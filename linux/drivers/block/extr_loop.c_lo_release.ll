; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_lo_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_lo_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.loop_device* }
%struct.loop_device = type { i32, i64, i32, i32 }

@loop_ctl_mutex = common dso_local global i32 0, align 4
@LO_FLAGS_AUTOCLEAR = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@Lo_rundown = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, i32)* @lo_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_release(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop_device*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @loop_ctl_mutex)
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  store %struct.loop_device* %9, %struct.loop_device** %5, align 8
  %10 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %11 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %10, i32 0, i32 3
  %12 = call i64 @atomic_dec_return(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %17 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LO_FLAGS_AUTOCLEAR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %24 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @Lo_bound, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %53

29:                                               ; preds = %22
  %30 = load i64, i64* @Lo_rundown, align 8
  %31 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %32 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %34 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %35 = call i32 @__loop_clr_fd(%struct.loop_device* %34, i32 1)
  br label %55

36:                                               ; preds = %15
  %37 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %38 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @Lo_bound, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %44 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @blk_mq_freeze_queue(i32 %45)
  %47 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %48 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @blk_mq_unfreeze_queue(i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %28, %14
  %54 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  br label %55

55:                                               ; preds = %53, %29
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__loop_clr_fd(%struct.loop_device*, i32) #1

declare dso_local i32 @blk_mq_freeze_queue(i32) #1

declare dso_local i32 @blk_mq_unfreeze_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
