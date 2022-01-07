; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, %struct.TYPE_8__, %struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*, %struct.request_queue* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_ctx = type { i32* }
%struct.request_queue = type { i32, %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.request*)* }

@RQF_ELVPRIV = common dso_local global i32 0, align 4
@RQF_MQ_INFLIGHT = common dso_local global i32 0, align 4
@laptop_mode = common dso_local global i64 0, align 8
@MQ_RQ_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_mq_free_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.elevator_queue*, align 8
  %5 = alloca %struct.blk_mq_ctx*, align 8
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 6
  %9 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  store %struct.request_queue* %9, %struct.request_queue** %3, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 1
  %12 = load %struct.elevator_queue*, %struct.elevator_queue** %11, align 8
  store %struct.elevator_queue* %12, %struct.elevator_queue** %4, align 8
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 5
  %15 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %14, align 8
  store %struct.blk_mq_ctx* %15, %struct.blk_mq_ctx** %5, align 8
  %16 = load %struct.request*, %struct.request** %2, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 4
  %18 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %17, align 8
  store %struct.blk_mq_hw_ctx* %18, %struct.blk_mq_hw_ctx** %6, align 8
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RQF_ELVPRIV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %1
  %26 = load %struct.elevator_queue*, %struct.elevator_queue** %4, align 8
  %27 = icmp ne %struct.elevator_queue* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.elevator_queue*, %struct.elevator_queue** %4, align 8
  %30 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.request*)*, i32 (%struct.request*)** %33, align 8
  %35 = icmp ne i32 (%struct.request*)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.elevator_queue*, %struct.elevator_queue** %4, align 8
  %38 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.request*)*, i32 (%struct.request*)** %41, align 8
  %43 = load %struct.request*, %struct.request** %2, align 8
  %44 = call i32 %42(%struct.request* %43)
  br label %45

45:                                               ; preds = %36, %28, %25
  %46 = load %struct.request*, %struct.request** %2, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.request*, %struct.request** %2, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @put_io_context(i32 %57)
  %59 = load %struct.request*, %struct.request** %2, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %61, align 8
  br label %62

62:                                               ; preds = %51, %45
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.request*, %struct.request** %2, align 8
  %68 = call i64 @rq_is_sync(%struct.request* %67)
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.request*, %struct.request** %2, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RQF_MQ_INFLIGHT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %79, i32 0, i32 0
  %81 = call i32 @atomic_dec(i32* %80)
  br label %82

82:                                               ; preds = %78, %63
  %83 = load i64, i64* @laptop_mode, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.request*, %struct.request** %2, align 8
  %87 = call i32 @blk_rq_is_passthrough(%struct.request* %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %85, %82
  %91 = phi i1 [ false, %82 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %97 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @laptop_io_completion(i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %102 = load %struct.request*, %struct.request** %2, align 8
  %103 = call i32 @rq_qos_done(%struct.request_queue* %101, %struct.request* %102)
  %104 = load %struct.request*, %struct.request** %2, align 8
  %105 = getelementptr inbounds %struct.request, %struct.request* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MQ_RQ_IDLE, align 4
  %108 = call i32 @WRITE_ONCE(i32 %106, i32 %107)
  %109 = load %struct.request*, %struct.request** %2, align 8
  %110 = getelementptr inbounds %struct.request, %struct.request* %109, i32 0, i32 1
  %111 = call i64 @refcount_dec_and_test(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load %struct.request*, %struct.request** %2, align 8
  %115 = call i32 @__blk_mq_free_request(%struct.request* %114)
  br label %116

116:                                              ; preds = %113, %100
  ret void
}

declare dso_local i32 @put_io_context(i32) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @laptop_io_completion(i32) #1

declare dso_local i32 @rq_qos_done(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @__blk_mq_free_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
