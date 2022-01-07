; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_delay_run_hw_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_delay_run_hw_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, i32, i32 }

@BLK_MQ_F_BLOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, i32, i64)* @__blk_mq_delay_run_hw_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %9 = call i32 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %45

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BLK_MQ_F_BLOCKING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  %24 = call i32 (...) @get_cpu()
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @cpumask_test_cpu(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %33 = call i32 @__blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* %32)
  %34 = call i32 (...) @put_cpu()
  br label %45

35:                                               ; preds = %23
  %36 = call i32 (...) @put_cpu()
  br label %37

37:                                               ; preds = %35, %16, %13
  %38 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %39 = call i32 @blk_mq_hctx_next_cpu(%struct.blk_mq_hw_ctx* %38)
  %40 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %40, i32 0, i32 1
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @msecs_to_jiffies(i64 %42)
  %44 = call i32 @kblockd_mod_delayed_work_on(i32 %39, i32* %41, i32 %43)
  br label %45

45:                                               ; preds = %37, %31, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_mq_hctx_stopped(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @__blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @kblockd_mod_delayed_work_on(i32, i32*, i32) #1

declare dso_local i32 @blk_mq_hctx_next_cpu(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
