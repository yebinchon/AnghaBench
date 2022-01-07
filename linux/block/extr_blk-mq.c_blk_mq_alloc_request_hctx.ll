; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_request_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_request_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.request_queue = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.blk_mq_alloc_data = type { i32, i32, i32, %struct.TYPE_2__* }

@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @blk_mq_alloc_request_hctx(%struct.request_queue* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.blk_mq_alloc_data, align 8
  %11 = alloca %struct.request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %10, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %10, i32 0, i32 1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %10, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %10, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.request* @ERR_PTR(i32 %30)
  store %struct.request* %31, %struct.request** %5, align 8
  br label %93

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %35 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.request* @ERR_PTR(i32 %40)
  store %struct.request* %41, %struct.request** %5, align 8
  br label %93

42:                                               ; preds = %32
  %43 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @blk_queue_enter(%struct.request_queue* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.request* @ERR_PTR(i32 %49)
  store %struct.request* %50, %struct.request** %5, align 8
  br label %93

51:                                               ; preds = %42
  %52 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %53 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %10, i32 0, i32 3
  store %struct.TYPE_2__* %58, %struct.TYPE_2__** %59, align 8
  %60 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %10, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @blk_mq_hw_queue_mapped(%struct.TYPE_2__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %51
  %65 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %66 = call i32 @blk_queue_exit(%struct.request_queue* %65)
  %67 = load i32, i32* @EXDEV, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.request* @ERR_PTR(i32 %68)
  store %struct.request* %69, %struct.request** %5, align 8
  br label %93

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %10, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @cpu_online_mask, align 4
  %76 = call i32 @cpumask_first_and(i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @__blk_mq_get_ctx(%struct.request_queue* %77, i32 %78)
  %80 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %10, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %82 = call %struct.request* @blk_mq_get_request(%struct.request_queue* %81, i32* null, %struct.blk_mq_alloc_data* %10)
  store %struct.request* %82, %struct.request** %11, align 8
  %83 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %84 = call i32 @blk_queue_exit(%struct.request_queue* %83)
  %85 = load %struct.request*, %struct.request** %11, align 8
  %86 = icmp ne %struct.request* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %70
  %88 = load i32, i32* @EWOULDBLOCK, align 4
  %89 = sub nsw i32 0, %88
  %90 = call %struct.request* @ERR_PTR(i32 %89)
  store %struct.request* %90, %struct.request** %5, align 8
  br label %93

91:                                               ; preds = %70
  %92 = load %struct.request*, %struct.request** %11, align 8
  store %struct.request* %92, %struct.request** %5, align 8
  br label %93

93:                                               ; preds = %91, %87, %64, %48, %38, %28
  %94 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %94
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.request* @ERR_PTR(i32) #1

declare dso_local i32 @blk_queue_enter(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_mq_hw_queue_mapped(%struct.TYPE_2__*) #1

declare dso_local i32 @blk_queue_exit(%struct.request_queue*) #1

declare dso_local i32 @cpumask_first_and(i32, i32) #1

declare dso_local i32 @__blk_mq_get_ctx(%struct.request_queue*, i32) #1

declare dso_local %struct.request* @blk_mq_get_request(%struct.request_queue*, i32*, %struct.blk_mq_alloc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
