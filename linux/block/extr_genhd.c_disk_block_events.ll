; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_block_events.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_block_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.disk_events* }
%struct.disk_events = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_block_events(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.disk_events*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 0
  %8 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  store %struct.disk_events* %8, %struct.disk_events** %3, align 8
  %9 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %10 = icmp ne %struct.disk_events* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %14 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %17 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %16, i32 0, i32 2
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %21 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = icmp ne i32 %22, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %28 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %27, i32 0, i32 2
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %12
  %34 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %35 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %34, i32 0, i32 0
  %36 = load %struct.disk_events*, %struct.disk_events** %35, align 8
  %37 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %36, i32 0, i32 1
  %38 = call i32 @cancel_delayed_work_sync(i32* %37)
  br label %39

39:                                               ; preds = %33, %12
  %40 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %41 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
