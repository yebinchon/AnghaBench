; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_alloc_events.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_alloc_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.disk_events*, i32, i32, %struct.TYPE_2__* }
%struct.disk_events = type { i32, i32, i32, i32, i32, %struct.gendisk*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: failed to initialize events\0A\00", align 1
@disk_events_workfn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*)* @disk_alloc_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_alloc_events(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.disk_events*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %5 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %50

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.disk_events* @kzalloc(i32 40, i32 %17)
  store %struct.disk_events* %18, %struct.disk_events** %3, align 8
  %19 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %20 = icmp ne %struct.disk_events* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %50

26:                                               ; preds = %16
  %27 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %28 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %27, i32 0, i32 6
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %31 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %32 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %31, i32 0, i32 5
  store %struct.gendisk* %30, %struct.gendisk** %32, align 8
  %33 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %34 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %33, i32 0, i32 4
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %37 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %36, i32 0, i32 3
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %40 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %42 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  %43 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %44 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %43, i32 0, i32 2
  %45 = load i32, i32* @disk_events_workfn, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  %47 = load %struct.disk_events*, %struct.disk_events** %3, align 8
  %48 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %49 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %48, i32 0, i32 0
  store %struct.disk_events* %47, %struct.disk_events** %49, align 8
  br label %50

50:                                               ; preds = %26, %21, %15
  ret void
}

declare dso_local %struct.disk_events* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
