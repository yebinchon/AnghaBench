; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c___disk_unblock_events.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c___disk_unblock_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.disk_events* }
%struct.disk_events = type { i64, i32, i32 }

@system_freezable_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, i32)* @__disk_unblock_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__disk_unblock_events(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.disk_events*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %9 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %8, i32 0, i32 0
  %10 = load %struct.disk_events*, %struct.disk_events** %9, align 8
  store %struct.disk_events* %10, %struct.disk_events** %5, align 8
  %11 = load %struct.disk_events*, %struct.disk_events** %5, align 8
  %12 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.disk_events*, %struct.disk_events** %5, align 8
  %16 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON_ONCE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.disk_events*, %struct.disk_events** %5, align 8
  %25 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %51

30:                                               ; preds = %23
  %31 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %32 = call i64 @disk_events_poll_jiffies(%struct.gendisk* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @system_freezable_power_efficient_wq, align 4
  %37 = load %struct.disk_events*, %struct.disk_events** %5, align 8
  %38 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %37, i32 0, i32 2
  %39 = call i32 @queue_delayed_work(i32 %36, i32* %38, i64 0)
  br label %50

40:                                               ; preds = %30
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @system_freezable_power_efficient_wq, align 4
  %45 = load %struct.disk_events*, %struct.disk_events** %5, align 8
  %46 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %45, i32 0, i32 2
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @queue_delayed_work(i32 %44, i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %43, %40
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %29, %22
  %52 = load %struct.disk_events*, %struct.disk_events** %5, align 8
  %53 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %52, i32 0, i32 1
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @disk_events_poll_jiffies(%struct.gendisk*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
