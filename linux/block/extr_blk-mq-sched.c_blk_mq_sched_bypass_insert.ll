; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_bypass_insert.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_sched_bypass_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, i32 }
%struct.request = type { i32, i32 }

@RQF_FLUSH_SEQ = common dso_local global i32 0, align 4
@RQF_SORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, i32, %struct.request*)* @blk_mq_sched_bypass_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_sched_bypass_insert(%struct.blk_mq_hw_ctx* %0, i32 %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.request*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.request* %2, %struct.request** %7, align 8
  %8 = load %struct.request*, %struct.request** %7, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RQF_FLUSH_SEQ, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.request*, %struct.request** %7, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %20, i32 0, i32 1
  %22 = call i32 @list_add(i32* %19, i32* %21)
  %23 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  store i32 1, i32* %4, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @RQF_SORTED, align 4
  %31 = load %struct.request*, %struct.request** %7, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
