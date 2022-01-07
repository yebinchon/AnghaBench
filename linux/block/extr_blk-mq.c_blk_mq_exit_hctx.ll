; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_exit_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_exit_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32 }
%struct.blk_mq_tag_set = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, i32, i32)* }
%struct.blk_mq_hw_ctx = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.blk_mq_tag_set*, %struct.blk_mq_hw_ctx*, i32)* @blk_mq_exit_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_exit_hctx(%struct.request_queue* %0, %struct.blk_mq_tag_set* %1, %struct.blk_mq_hw_ctx* %2, i32 %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca %struct.blk_mq_hw_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.blk_mq_tag_set* %1, %struct.blk_mq_tag_set** %6, align 8
  store %struct.blk_mq_hw_ctx* %2, %struct.blk_mq_hw_ctx** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %10 = call i64 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %14 = call i32 @blk_mq_tag_idle(%struct.blk_mq_hw_ctx* %13)
  br label %15

15:                                               ; preds = %12, %4
  %16 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %17 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (%struct.blk_mq_tag_set*, i32, i32)*, i32 (%struct.blk_mq_tag_set*, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.blk_mq_tag_set*, i32, i32)* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %24 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32 (%struct.blk_mq_tag_set*, i32, i32)*, i32 (%struct.blk_mq_tag_set*, i32, i32)** %26, align 8
  %28 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %29 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 %27(%struct.blk_mq_tag_set* %28, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %22, %15
  %37 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %38 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_hw_ctx*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.blk_mq_hw_ctx*, i32)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %45 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_hw_ctx*, i32)** %47, align 8
  %49 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 %48(%struct.blk_mq_hw_ctx* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %54 = call i32 @blk_mq_remove_cpuhp(%struct.blk_mq_hw_ctx* %53)
  %55 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %56 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %7, align 8
  %59 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %58, i32 0, i32 0
  %60 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %61 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %60, i32 0, i32 1
  %62 = call i32 @list_add(i32* %59, i32* %61)
  %63 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %64 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  ret void
}

declare dso_local i64 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @blk_mq_tag_idle(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @blk_mq_remove_cpuhp(%struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
