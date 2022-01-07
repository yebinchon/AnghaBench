; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_assign_ioc.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_assign_ioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.io_context* }
%struct.io_context = type { i32 }
%struct.request = type { %struct.TYPE_3__, %struct.request_queue* }
%struct.TYPE_3__ = type { %struct.io_cq* }
%struct.io_cq = type { i32 }
%struct.request_queue = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_sched_assign_ioc(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.io_context*, align 8
  %5 = alloca %struct.io_cq*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 1
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.io_context*, %struct.io_context** %10, align 8
  store %struct.io_context* %11, %struct.io_context** %4, align 8
  %12 = load %struct.io_context*, %struct.io_context** %4, align 8
  %13 = icmp ne %struct.io_context* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %17 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.io_context*, %struct.io_context** %4, align 8
  %20 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %21 = call %struct.io_cq* @ioc_lookup_icq(%struct.io_context* %19, %struct.request_queue* %20)
  store %struct.io_cq* %21, %struct.io_cq** %5, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %26 = icmp ne %struct.io_cq* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %15
  %28 = load %struct.io_context*, %struct.io_context** %4, align 8
  %29 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.io_cq* @ioc_create_icq(%struct.io_context* %28, %struct.request_queue* %29, i32 %30)
  store %struct.io_cq* %31, %struct.io_cq** %5, align 8
  %32 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %33 = icmp ne %struct.io_cq* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %45

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %38 = getelementptr inbounds %struct.io_cq, %struct.io_cq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_io_context(i32 %39)
  %41 = load %struct.io_cq*, %struct.io_cq** %5, align 8
  %42 = load %struct.request*, %struct.request** %2, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.io_cq* %41, %struct.io_cq** %44, align 8
  br label %45

45:                                               ; preds = %36, %34, %14
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.io_cq* @ioc_lookup_icq(%struct.io_context*, %struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.io_cq* @ioc_create_icq(%struct.io_context*, %struct.request_queue*, i32) #1

declare dso_local i32 @get_io_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
