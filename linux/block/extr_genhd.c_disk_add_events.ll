; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_add_events.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_add_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@disk_events_attrs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: failed to create sysfs files for events\0A\00", align 1
@disk_events_mutex = common dso_local global i32 0, align 4
@disk_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*)* @disk_add_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_add_events(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %3 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %4 = call %struct.TYPE_4__* @disk_to_dev(%struct.gendisk* %3)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* @disk_events_attrs, align 4
  %7 = call i64 @sysfs_create_files(i32* %5, i32 %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %16 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %30

20:                                               ; preds = %14
  %21 = call i32 @mutex_lock(i32* @disk_events_mutex)
  %22 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %25, i32* @disk_events)
  %27 = call i32 @mutex_unlock(i32* @disk_events_mutex)
  %28 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %29 = call i32 @__disk_unblock_events(%struct.gendisk* %28, i32 1)
  br label %30

30:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @sysfs_create_files(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__disk_unblock_events(%struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
