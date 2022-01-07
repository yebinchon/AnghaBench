; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c___blk_mq_sched_bio_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c___blk_mq_sched_bio_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)* }
%struct.blk_mq_hw_ctx = type { i32, i32 }
%struct.bio = type { i32 }
%struct.blk_mq_ctx = type { i32, i32* }

@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__blk_mq_sched_bio_merge(%struct.request_queue* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.elevator_queue*, align 8
  %9 = alloca %struct.blk_mq_ctx*, align 8
  %10 = alloca %struct.blk_mq_hw_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load %struct.elevator_queue*, %struct.elevator_queue** %14, align 8
  store %struct.elevator_queue* %15, %struct.elevator_queue** %8, align 8
  %16 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %17 = call %struct.blk_mq_ctx* @blk_mq_get_ctx(%struct.request_queue* %16)
  store %struct.blk_mq_ctx* %17, %struct.blk_mq_ctx** %9, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %23 = call %struct.blk_mq_hw_ctx* @blk_mq_map_queue(%struct.request_queue* %18, i32 %21, %struct.blk_mq_ctx* %22)
  store %struct.blk_mq_hw_ctx* %23, %struct.blk_mq_hw_ctx** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %25 = icmp ne %struct.elevator_queue* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %3
  %27 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %28 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.elevator_queue*, %struct.elevator_queue** %8, align 8
  %36 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)*, i32 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)** %39, align 8
  %41 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %10, align 8
  %42 = load %struct.bio*, %struct.bio** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 %40(%struct.blk_mq_hw_ctx* %41, %struct.bio* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %79

45:                                               ; preds = %26, %3
  %46 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %10, align 8
  %50 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %45
  %56 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @list_empty_careful(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %55
  %65 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %69 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %10, align 8
  %70 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %71 = load %struct.bio*, %struct.bio** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @blk_mq_attempt_merge(%struct.request_queue* %68, %struct.blk_mq_hw_ctx* %69, %struct.blk_mq_ctx* %70, %struct.bio* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %75 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  br label %77

77:                                               ; preds = %64, %55, %45
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %34
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.blk_mq_ctx* @blk_mq_get_ctx(%struct.request_queue*) #1

declare dso_local %struct.blk_mq_hw_ctx* @blk_mq_map_queue(%struct.request_queue*, i32, %struct.blk_mq_ctx*) #1

declare dso_local i32 @list_empty_careful(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @blk_mq_attempt_merge(%struct.request_queue*, %struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*, %struct.bio*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
