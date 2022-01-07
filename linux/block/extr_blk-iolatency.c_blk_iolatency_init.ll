; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_blk_iolatency_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_blk_iolatency_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.blk_iolatency = type { i32, %struct.rq_qos }
%struct.rq_qos = type { %struct.request_queue*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RQ_QOS_LATENCY = common dso_local global i32 0, align 4
@blkcg_iolatency_ops = common dso_local global i32 0, align 4
@blkcg_policy_iolatency = common dso_local global i32 0, align 4
@blkiolatency_timer_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_iolatency_init(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.blk_iolatency*, align 8
  %5 = alloca %struct.rq_qos*, align 8
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.blk_iolatency* @kzalloc(i32 32, i32 %7)
  store %struct.blk_iolatency* %8, %struct.blk_iolatency** %4, align 8
  %9 = load %struct.blk_iolatency*, %struct.blk_iolatency** %4, align 8
  %10 = icmp ne %struct.blk_iolatency* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.blk_iolatency*, %struct.blk_iolatency** %4, align 8
  %16 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %15, i32 0, i32 1
  store %struct.rq_qos* %16, %struct.rq_qos** %5, align 8
  %17 = load i32, i32* @RQ_QOS_LATENCY, align 4
  %18 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %19 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %21 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %20, i32 0, i32 1
  store i32* @blkcg_iolatency_ops, i32** %21, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %23 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %24 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %23, i32 0, i32 0
  store %struct.request_queue* %22, %struct.request_queue** %24, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %26 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %27 = call i32 @rq_qos_add(%struct.request_queue* %25, %struct.rq_qos* %26)
  %28 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %29 = call i32 @blkcg_activate_policy(%struct.request_queue* %28, i32* @blkcg_policy_iolatency)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %14
  %33 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %34 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %35 = call i32 @rq_qos_del(%struct.request_queue* %33, %struct.rq_qos* %34)
  %36 = load %struct.blk_iolatency*, %struct.blk_iolatency** %4, align 8
  %37 = call i32 @kfree(%struct.blk_iolatency* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %14
  %40 = load %struct.blk_iolatency*, %struct.blk_iolatency** %4, align 8
  %41 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %40, i32 0, i32 0
  %42 = load i32, i32* @blkiolatency_timer_fn, align 4
  %43 = call i32 @timer_setup(i32* %41, i32 %42, i32 0)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %32, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.blk_iolatency* @kzalloc(i32, i32) #1

declare dso_local i32 @rq_qos_add(%struct.request_queue*, %struct.rq_qos*) #1

declare dso_local i32 @blkcg_activate_policy(%struct.request_queue*, i32*) #1

declare dso_local i32 @rq_qos_del(%struct.request_queue*, %struct.rq_qos*) #1

declare dso_local i32 @kfree(%struct.blk_iolatency*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
