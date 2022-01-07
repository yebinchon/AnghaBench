; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_dispatch_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_dispatch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.blk_mq_hw_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bfq_data* }
%struct.bfq_data = type { i32, %struct.bfq_queue* }
%struct.bfq_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.blk_mq_hw_ctx*)* @bfq_dispatch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @bfq_dispatch_request(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca %struct.blk_mq_hw_ctx*, align 8
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %2, align 8
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.bfq_data*, %struct.bfq_data** %13, align 8
  store %struct.bfq_data* %14, %struct.bfq_data** %3, align 8
  %15 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %16 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %19 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %18, i32 0, i32 1
  %20 = load %struct.bfq_queue*, %struct.bfq_queue** %19, align 8
  store %struct.bfq_queue* %20, %struct.bfq_queue** %5, align 8
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %22 = icmp ne %struct.bfq_queue* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %25 = call i64 @bfq_bfqq_wait_request(%struct.bfq_queue* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i1 [ false, %1 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %31 = call %struct.request* @__bfq_dispatch_request(%struct.blk_mq_hw_ctx* %30)
  store %struct.request* %31, %struct.request** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %36 = call i64 @bfq_bfqq_wait_request(%struct.bfq_queue* %35)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i1 [ false, %27 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %43 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @bfq_update_dispatch_stats(%struct.TYPE_4__* %47, %struct.request* %48, %struct.bfq_queue* %49, i32 %50)
  %52 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %52
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @bfq_bfqq_wait_request(%struct.bfq_queue*) #1

declare dso_local %struct.request* @__bfq_dispatch_request(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bfq_update_dispatch_stats(%struct.TYPE_4__*, %struct.request*, %struct.bfq_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
