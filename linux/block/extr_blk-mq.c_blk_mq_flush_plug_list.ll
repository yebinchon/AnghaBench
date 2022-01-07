; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_flush_plug_list.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_flush_plug_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.blk_plug = type { i32, i64, i32 }
%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_ctx = type { i32 }
%struct.request_queue = type { i32 }
%struct.request = type { i32, %struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*, %struct.request_queue* }

@list = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@rq_list = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@plug_rq_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_flush_plug_list(%struct.blk_plug* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_plug*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  %6 = alloca %struct.blk_mq_ctx*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.blk_plug* %0, %struct.blk_plug** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @list, i32 0, i32 0), align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rq_list, i32 0, i32 0), align 4
  %13 = call i32 @LIST_HEAD(i32 %12)
  %14 = load %struct.blk_plug*, %struct.blk_plug** %3, align 8
  %15 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %14, i32 0, i32 2
  %16 = call i32 @list_splice_init(i32* %15, %struct.TYPE_9__* @list)
  %17 = load %struct.blk_plug*, %struct.blk_plug** %3, align 8
  %18 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.blk_plug*, %struct.blk_plug** %3, align 8
  %23 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @plug_rq_cmp, align 4
  %28 = call i32 @list_sort(i32* null, %struct.TYPE_9__* @list, i32 %27)
  br label %29

29:                                               ; preds = %26, %21, %2
  %30 = load %struct.blk_plug*, %struct.blk_plug** %3, align 8
  %31 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  store %struct.request_queue* null, %struct.request_queue** %7, align 8
  store %struct.blk_mq_hw_ctx* null, %struct.blk_mq_hw_ctx** %5, align 8
  store %struct.blk_mq_ctx* null, %struct.blk_mq_ctx** %6, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %85, %29
  %33 = call i32 @list_empty(%struct.TYPE_9__* @list)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %91

36:                                               ; preds = %32
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @list, i32 0, i32 0), align 4
  %38 = call %struct.request* @list_entry_rq(i32 %37)
  store %struct.request* %38, %struct.request** %8, align 8
  %39 = load %struct.request*, %struct.request** %8, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load %struct.request*, %struct.request** %8, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 3
  %44 = load %struct.request_queue*, %struct.request_queue** %43, align 8
  %45 = icmp ne %struct.request_queue* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.request*, %struct.request** %8, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 1
  %51 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %50, align 8
  %52 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %53 = icmp ne %struct.blk_mq_hw_ctx* %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %36
  %55 = load %struct.request*, %struct.request** %8, align 8
  %56 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 2
  %57 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %56, align 8
  %58 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %6, align 8
  %59 = icmp ne %struct.blk_mq_ctx* %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54, %36
  %61 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %62 = icmp ne %struct.blk_mq_hw_ctx* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @trace_block_unplug(%struct.request_queue* %64, i32 %65, i32 %69)
  %71 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %72 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %6, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @blk_mq_sched_insert_requests(%struct.blk_mq_hw_ctx* %71, %struct.blk_mq_ctx* %72, %struct.TYPE_9__* @rq_list, i32 %73)
  br label %75

75:                                               ; preds = %63, %60
  %76 = load %struct.request*, %struct.request** %8, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 3
  %78 = load %struct.request_queue*, %struct.request_queue** %77, align 8
  store %struct.request_queue* %78, %struct.request_queue** %7, align 8
  %79 = load %struct.request*, %struct.request** %8, align 8
  %80 = getelementptr inbounds %struct.request, %struct.request* %79, i32 0, i32 2
  %81 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %80, align 8
  store %struct.blk_mq_ctx* %81, %struct.blk_mq_ctx** %6, align 8
  %82 = load %struct.request*, %struct.request** %8, align 8
  %83 = getelementptr inbounds %struct.request, %struct.request* %82, i32 0, i32 1
  %84 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %83, align 8
  store %struct.blk_mq_hw_ctx* %84, %struct.blk_mq_hw_ctx** %5, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %75, %54
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load %struct.request*, %struct.request** %8, align 8
  %89 = getelementptr inbounds %struct.request, %struct.request* %88, i32 0, i32 0
  %90 = call i32 @list_add_tail(i32* %89, %struct.TYPE_9__* @rq_list)
  br label %32

91:                                               ; preds = %32
  %92 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %93 = icmp ne %struct.blk_mq_hw_ctx* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @trace_block_unplug(%struct.request_queue* %95, i32 %96, i32 %100)
  %102 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %103 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %6, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @blk_mq_sched_insert_requests(%struct.blk_mq_hw_ctx* %102, %struct.blk_mq_ctx* %103, %struct.TYPE_9__* @rq_list, i32 %104)
  br label %106

106:                                              ; preds = %94, %91
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @list_splice_init(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @list_sort(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_9__*) #1

declare dso_local %struct.request* @list_entry_rq(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_block_unplug(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @blk_mq_sched_insert_requests(%struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
