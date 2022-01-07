; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_complete_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_4__, i32, %struct.request_queue*, %struct.blk_mq_ctx* }
%struct.TYPE_4__ = type { i64, %struct.request*, i32 }
%struct.request_queue = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.request*)* }
%struct.blk_mq_ctx = type { i32 }

@MQ_RQ_COMPLETE = common dso_local global i32 0, align 4
@REQ_HIPRI = common dso_local global i32 0, align 4
@QUEUE_FLAG_SAME_COMP = common dso_local global i32 0, align 4
@QUEUE_FLAG_SAME_FORCE = common dso_local global i32 0, align 4
@__blk_mq_complete_request_remote = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @__blk_mq_complete_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blk_mq_complete_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.blk_mq_ctx*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 4
  %9 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %8, align 8
  store %struct.blk_mq_ctx* %9, %struct.blk_mq_ctx** %3, align 8
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 3
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MQ_RQ_COMPLETE, align 4
  %17 = call i32 @WRITE_ONCE(i32 %15, i32 %16)
  %18 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.request*, %struct.request** %2, align 8
  %24 = call i32 @__blk_complete_request(%struct.request* %23)
  br label %102

25:                                               ; preds = %1
  %26 = load %struct.request*, %struct.request** %2, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @REQ_HIPRI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @QUEUE_FLAG_SAME_COMP, align 4
  %34 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %35 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %34, i32 0, i32 2
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %40 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.request*)*, i32 (%struct.request*)** %42, align 8
  %44 = load %struct.request*, %struct.request** %2, align 8
  %45 = call i32 %43(%struct.request* %44)
  br label %102

46:                                               ; preds = %32
  %47 = call i32 (...) @get_cpu()
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @QUEUE_FLAG_SAME_FORCE, align 4
  %49 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %50 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %49, i32 0, i32 2
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cpus_share_cache(i32 %54, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %65
  %69 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @cpu_online(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load i32, i32* @__blk_mq_complete_request_remote, align 4
  %76 = load %struct.request*, %struct.request** %2, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load %struct.request*, %struct.request** %2, align 8
  %80 = load %struct.request*, %struct.request** %2, align 8
  %81 = getelementptr inbounds %struct.request, %struct.request* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store %struct.request* %79, %struct.request** %82, align 8
  %83 = load %struct.request*, %struct.request** %2, align 8
  %84 = getelementptr inbounds %struct.request, %struct.request* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.request*, %struct.request** %2, align 8
  %90 = getelementptr inbounds %struct.request, %struct.request* %89, i32 0, i32 1
  %91 = call i32 @smp_call_function_single_async(i32 %88, %struct.TYPE_4__* %90)
  br label %100

92:                                               ; preds = %68, %65, %59
  %93 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %94 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32 (%struct.request*)*, i32 (%struct.request*)** %96, align 8
  %98 = load %struct.request*, %struct.request** %2, align 8
  %99 = call i32 %97(%struct.request* %98)
  br label %100

100:                                              ; preds = %92, %74
  %101 = call i32 (...) @put_cpu()
  br label %102

102:                                              ; preds = %100, %38, %22
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @__blk_complete_request(%struct.request*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @cpus_share_cache(i32, i32) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @smp_call_function_single_async(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
