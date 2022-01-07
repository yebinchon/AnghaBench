; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blk_insert_flush.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blk_insert_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i64, i32, %struct.TYPE_2__, i32, i32, i32, %struct.request_queue* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.request_queue = type { i64 }
%struct.blk_flush_queue = type { i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@QUEUE_FLAG_FUA = common dso_local global i64 0, align 8
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_FSEQ_DATA = common dso_local global i32 0, align 4
@REQ_FSEQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FSEQ_POSTFLUSH = common dso_local global i32 0, align 4
@RQF_FLUSH_SEQ = common dso_local global i32 0, align 4
@mq_flush_data_end_io = common dso_local global i32 0, align 4
@REQ_FSEQ_ACTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_insert_flush(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_flush_queue*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 7
  %9 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  store %struct.request_queue* %9, %struct.request_queue** %3, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.request*, %struct.request** %2, align 8
  %15 = call i32 @blk_flush_policy(i64 %13, %struct.request* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %17 = load %struct.request*, %struct.request** %2, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.blk_flush_queue* @blk_get_flush_queue(%struct.request_queue* %16, i32 %19)
  store %struct.blk_flush_queue* %20, %struct.blk_flush_queue** %6, align 8
  %21 = load i32, i32* @REQ_PREFLUSH, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.request*, %struct.request** %2, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @QUEUE_FLAG_FUA, align 8
  %29 = shl i64 1, %28
  %30 = and i64 %27, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @REQ_FUA, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.request*, %struct.request** %2, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %1
  %40 = load i32, i32* @REQ_SYNC, align 4
  %41 = load %struct.request*, %struct.request** %2, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load %struct.request*, %struct.request** %2, align 8
  %49 = call i32 @blk_mq_end_request(%struct.request* %48, i32 0)
  br label %109

50:                                               ; preds = %39
  %51 = load %struct.request*, %struct.request** %2, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.request*, %struct.request** %2, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @REQ_FSEQ_DATA, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %50
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @REQ_FSEQ_PREFLUSH, align 4
  %67 = load i32, i32* @REQ_FSEQ_POSTFLUSH, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load %struct.request*, %struct.request** %2, align 8
  %73 = call i32 @blk_mq_request_bypass_insert(%struct.request* %72, i32 0)
  br label %109

74:                                               ; preds = %64, %50
  %75 = load %struct.request*, %struct.request** %2, align 8
  %76 = getelementptr inbounds %struct.request, %struct.request* %75, i32 0, i32 3
  %77 = call i32 @memset(%struct.TYPE_2__* %76, i32 0, i32 8)
  %78 = load %struct.request*, %struct.request** %2, align 8
  %79 = getelementptr inbounds %struct.request, %struct.request* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load i32, i32* @RQF_FLUSH_SEQ, align 4
  %83 = load %struct.request*, %struct.request** %2, align 8
  %84 = getelementptr inbounds %struct.request, %struct.request* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.request*, %struct.request** %2, align 8
  %88 = getelementptr inbounds %struct.request, %struct.request* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.request*, %struct.request** %2, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @mq_flush_data_end_io, align 4
  %94 = load %struct.request*, %struct.request** %2, align 8
  %95 = getelementptr inbounds %struct.request, %struct.request* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %6, align 8
  %97 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %96, i32 0, i32 0
  %98 = call i32 @spin_lock_irq(i32* %97)
  %99 = load %struct.request*, %struct.request** %2, align 8
  %100 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %6, align 8
  %101 = load i32, i32* @REQ_FSEQ_ACTIONS, align 4
  %102 = load i32, i32* %5, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = call i32 @blk_flush_complete_seq(%struct.request* %99, %struct.blk_flush_queue* %100, i32 %104, i32 0)
  %106 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %6, align 8
  %107 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock_irq(i32* %107)
  br label %109

109:                                              ; preds = %74, %71, %47
  ret void
}

declare dso_local i32 @blk_flush_policy(i64, %struct.request*) #1

declare dso_local %struct.blk_flush_queue* @blk_get_flush_queue(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_mq_request_bypass_insert(%struct.request*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @blk_flush_complete_seq(%struct.request*, %struct.blk_flush_queue*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
