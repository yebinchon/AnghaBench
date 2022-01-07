; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_register_sched.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_register_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.elevator_type* }
%struct.elevator_type = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sched\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_debugfs_register_sched(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.elevator_type*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.elevator_type*, %struct.elevator_type** %7, align 8
  store %struct.elevator_type* %8, %struct.elevator_type** %3, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %16 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %35

20:                                               ; preds = %14
  %21 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %31 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %32 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @debugfs_create_files(i32 %29, %struct.request_queue* %30, i32 %33)
  br label %35

35:                                               ; preds = %20, %19, %13
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_files(i32, %struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
