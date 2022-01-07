; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_init_tag_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_init_tag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.blk_mq_tag_set = type { i32, i32, i32*, i32, i32, i32, i32* }

@null_mq_ops = common dso_local global i32 0, align 4
@g_submit_queues = common dso_local global i32 0, align 4
@g_hw_queue_depth = common dso_local global i32 0, align 4
@g_home_node = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@g_no_sched = common dso_local global i64 0, align 8
@BLK_MQ_F_NO_SCHED = common dso_local global i32 0, align 4
@g_blocking = common dso_local global i64 0, align 8
@BLK_MQ_F_BLOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nullb*, %struct.blk_mq_tag_set*)* @null_init_tag_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_init_tag_set(%struct.nullb* %0, %struct.blk_mq_tag_set* %1) #0 {
  %3 = alloca %struct.nullb*, align 8
  %4 = alloca %struct.blk_mq_tag_set*, align 8
  store %struct.nullb* %0, %struct.nullb** %3, align 8
  store %struct.blk_mq_tag_set* %1, %struct.blk_mq_tag_set** %4, align 8
  %5 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %5, i32 0, i32 6
  store i32* @null_mq_ops, i32** %6, align 8
  %7 = load %struct.nullb*, %struct.nullb** %3, align 8
  %8 = icmp ne %struct.nullb* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.nullb*, %struct.nullb** %3, align 8
  %11 = getelementptr inbounds %struct.nullb, %struct.nullb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @g_submit_queues, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %14, %9 ], [ %16, %15 ]
  %19 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %20 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nullb*, %struct.nullb** %3, align 8
  %22 = icmp ne %struct.nullb* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.nullb*, %struct.nullb** %3, align 8
  %25 = getelementptr inbounds %struct.nullb, %struct.nullb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @g_hw_queue_depth, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %28, %23 ], [ %30, %29 ]
  %33 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %34 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nullb*, %struct.nullb** %3, align 8
  %36 = icmp ne %struct.nullb* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.nullb*, %struct.nullb** %3, align 8
  %39 = getelementptr inbounds %struct.nullb, %struct.nullb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @g_home_node, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i32 [ %42, %37 ], [ %44, %43 ]
  %47 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %48 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %50 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %52 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %53 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* @g_no_sched, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load i32, i32* @BLK_MQ_F_NO_SCHED, align 4
  %58 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %59 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %45
  %63 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %64 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.nullb*, %struct.nullb** %3, align 8
  %66 = icmp ne %struct.nullb* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.nullb*, %struct.nullb** %3, align 8
  %69 = getelementptr inbounds %struct.nullb, %struct.nullb* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67, %62
  %75 = load i64, i64* @g_blocking, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74, %67
  %78 = load i32, i32* @BLK_MQ_F_BLOCKING, align 4
  %79 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %80 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %85 = call i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set* %84)
  ret i32 %85
}

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
