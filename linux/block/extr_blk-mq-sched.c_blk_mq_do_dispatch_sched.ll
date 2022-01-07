; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_do_dispatch_sched.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_do_dispatch_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.request_queue* }
%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.request* (%struct.blk_mq_hw_ctx*)*, i32 (%struct.blk_mq_hw_ctx*)* }
%struct.request = type { i32 }

@rq_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*)* @blk_mq_do_dispatch_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_do_dispatch_sched(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca %struct.blk_mq_hw_ctx*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.elevator_queue*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %2, align 8
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i32 0, i32 0
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %10, align 8
  store %struct.elevator_queue* %11, %struct.elevator_queue** %4, align 8
  %12 = load i32, i32* @rq_list, align 4
  %13 = call i32 @LIST_HEAD(i32 %12)
  br label %14

14:                                               ; preds = %56, %1
  %15 = load %struct.elevator_queue*, %struct.elevator_queue** %4, align 8
  %16 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32 (%struct.blk_mq_hw_ctx*)*, i32 (%struct.blk_mq_hw_ctx*)** %19, align 8
  %21 = icmp ne i32 (%struct.blk_mq_hw_ctx*)* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.elevator_queue*, %struct.elevator_queue** %4, align 8
  %24 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (%struct.blk_mq_hw_ctx*)*, i32 (%struct.blk_mq_hw_ctx*)** %27, align 8
  %29 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %30 = call i32 %28(%struct.blk_mq_hw_ctx* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %60

33:                                               ; preds = %22, %14
  %34 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %35 = call i32 @blk_mq_get_dispatch_budget(%struct.blk_mq_hw_ctx* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %60

38:                                               ; preds = %33
  %39 = load %struct.elevator_queue*, %struct.elevator_queue** %4, align 8
  %40 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.request* (%struct.blk_mq_hw_ctx*)*, %struct.request* (%struct.blk_mq_hw_ctx*)** %43, align 8
  %45 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %46 = call %struct.request* %44(%struct.blk_mq_hw_ctx* %45)
  store %struct.request* %46, %struct.request** %5, align 8
  %47 = load %struct.request*, %struct.request** %5, align 8
  %48 = icmp ne %struct.request* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %51 = call i32 @blk_mq_put_dispatch_budget(%struct.blk_mq_hw_ctx* %50)
  br label %60

52:                                               ; preds = %38
  %53 = load %struct.request*, %struct.request** %5, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 0
  %55 = call i32 @list_add(i32* %54, i32* @rq_list)
  br label %56

56:                                               ; preds = %52
  %57 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %58 = call i64 @blk_mq_dispatch_rq_list(%struct.request_queue* %57, i32* @rq_list, i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %14, label %60

60:                                               ; preds = %56, %49, %37, %32
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @blk_mq_get_dispatch_budget(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @blk_mq_put_dispatch_budget(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @blk_mq_dispatch_rq_list(%struct.request_queue*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
