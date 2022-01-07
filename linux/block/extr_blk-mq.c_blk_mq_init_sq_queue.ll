; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_init_sq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_init_sq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.blk_mq_tag_set = type { i32, i32, i32, i32, i32, %struct.blk_mq_ops* }
%struct.blk_mq_ops = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_queue* @blk_mq_init_sq_queue(%struct.blk_mq_tag_set* %0, %struct.blk_mq_ops* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca %struct.blk_mq_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %6, align 8
  store %struct.blk_mq_ops* %1, %struct.blk_mq_ops** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %13 = call i32 @memset(%struct.blk_mq_tag_set* %12, i32 0, i32 32)
  %14 = load %struct.blk_mq_ops*, %struct.blk_mq_ops** %7, align 8
  %15 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %16 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %15, i32 0, i32 5
  store %struct.blk_mq_ops* %14, %struct.blk_mq_ops** %16, align 8
  %17 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %18 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %20 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %23 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @NUMA_NO_NODE, align 4
  %25 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %26 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %29 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %31 = call i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.request_queue* @ERR_PTR(i32 %35)
  store %struct.request_queue* %36, %struct.request_queue** %5, align 8
  br label %49

37:                                               ; preds = %4
  %38 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %39 = call %struct.request_queue* @blk_mq_init_queue(%struct.blk_mq_tag_set* %38)
  store %struct.request_queue* %39, %struct.request_queue** %10, align 8
  %40 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %41 = call i64 @IS_ERR(%struct.request_queue* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %45 = call i32 @blk_mq_free_tag_set(%struct.blk_mq_tag_set* %44)
  %46 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %46, %struct.request_queue** %5, align 8
  br label %49

47:                                               ; preds = %37
  %48 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %48, %struct.request_queue** %5, align 8
  br label %49

49:                                               ; preds = %47, %43, %34
  %50 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  ret %struct.request_queue* %50
}

declare dso_local i32 @memset(%struct.blk_mq_tag_set*, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set*) #1

declare dso_local %struct.request_queue* @ERR_PTR(i32) #1

declare dso_local %struct.request_queue* @blk_mq_init_queue(%struct.blk_mq_tag_set*) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.blk_mq_tag_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
