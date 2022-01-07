; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_insert_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_insert_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, %struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*, %struct.request_queue* }
%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_ctx = type { i32 }
%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.blk_mq_hw_ctx*, i32*, i32)* }

@RQF_FLUSH_SEQ = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_sched_insert_request(%struct.request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_queue*, align 8
  %10 = alloca %struct.elevator_queue*, align 8
  %11 = alloca %struct.blk_mq_ctx*, align 8
  %12 = alloca %struct.blk_mq_hw_ctx*, align 8
  store %struct.request* %0, %struct.request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 6
  %15 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  store %struct.request_queue* %15, %struct.request_queue** %9, align 8
  %16 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %17 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %16, i32 0, i32 0
  %18 = load %struct.elevator_queue*, %struct.elevator_queue** %17, align 8
  store %struct.elevator_queue* %18, %struct.elevator_queue** %10, align 8
  %19 = load %struct.request*, %struct.request** %5, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 5
  %21 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %20, align 8
  store %struct.blk_mq_ctx* %21, %struct.blk_mq_ctx** %11, align 8
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 4
  %24 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %23, align 8
  store %struct.blk_mq_hw_ctx* %24, %struct.blk_mq_hw_ctx** %12, align 8
  %25 = load %struct.request*, %struct.request** %5, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RQF_FLUSH_SEQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %4
  %32 = load %struct.request*, %struct.request** %5, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @op_is_flush(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = call i32 @blk_insert_flush(%struct.request* %38)
  br label %100

40:                                               ; preds = %31, %4
  %41 = load %struct.elevator_queue*, %struct.elevator_queue** %10, align 8
  %42 = icmp ne %struct.elevator_queue* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.request*, %struct.request** %5, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, -1
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %12, align 8
  %53 = load %struct.elevator_queue*, %struct.elevator_queue** %10, align 8
  %54 = icmp ne %struct.elevator_queue* %53, null
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.request*, %struct.request** %5, align 8
  %59 = call i64 @blk_mq_sched_bypass_insert(%struct.blk_mq_hw_ctx* %52, i32 %57, %struct.request* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %100

62:                                               ; preds = %48
  %63 = load %struct.elevator_queue*, %struct.elevator_queue** %10, align 8
  %64 = icmp ne %struct.elevator_queue* %63, null
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = load %struct.elevator_queue*, %struct.elevator_queue** %10, align 8
  %67 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.blk_mq_hw_ctx*, i32*, i32)*, i32 (%struct.blk_mq_hw_ctx*, i32*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.blk_mq_hw_ctx*, i32*, i32)* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %65
  %74 = load i32, i32* @list, align 4
  %75 = call i32 @LIST_HEAD(i32 %74)
  %76 = load %struct.request*, %struct.request** %5, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 2
  %78 = call i32 @list_add(i32* %77, i32* @list)
  %79 = load %struct.elevator_queue*, %struct.elevator_queue** %10, align 8
  %80 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (%struct.blk_mq_hw_ctx*, i32*, i32)*, i32 (%struct.blk_mq_hw_ctx*, i32*, i32)** %83, align 8
  %85 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %12, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 %84(%struct.blk_mq_hw_ctx* %85, i32* @list, i32 %86)
  br label %99

88:                                               ; preds = %65, %62
  %89 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %11, align 8
  %90 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %89, i32 0, i32 0
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %12, align 8
  %93 = load %struct.request*, %struct.request** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @__blk_mq_insert_request(%struct.blk_mq_hw_ctx* %92, %struct.request* %93, i32 %94)
  %96 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %11, align 8
  %97 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %88, %73
  br label %100

100:                                              ; preds = %99, %61, %37
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %12, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %100
  ret void
}

declare dso_local i64 @op_is_flush(i32) #1

declare dso_local i32 @blk_insert_flush(%struct.request*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @blk_mq_sched_bypass_insert(%struct.blk_mq_hw_ctx*, i32, %struct.request*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__blk_mq_insert_request(%struct.blk_mq_hw_ctx*, %struct.request*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
