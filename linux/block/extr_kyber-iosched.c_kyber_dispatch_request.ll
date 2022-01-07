; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_dispatch_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_dispatch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.blk_mq_hw_ctx = type { %struct.kyber_hctx_data*, %struct.TYPE_4__* }
%struct.kyber_hctx_data = type { i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kyber_queue_data* }
%struct.kyber_queue_data = type { i32 }

@kyber_batch_size = common dso_local global i64* null, align 8
@KYBER_NUM_DOMAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.blk_mq_hw_ctx*)* @kyber_dispatch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @kyber_dispatch_request(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca %struct.blk_mq_hw_ctx*, align 8
  %3 = alloca %struct.kyber_queue_data*, align 8
  %4 = alloca %struct.kyber_hctx_data*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %2, align 8
  %7 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %12, align 8
  store %struct.kyber_queue_data* %13, %struct.kyber_queue_data** %3, align 8
  %14 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %14, i32 0, i32 0
  %16 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %15, align 8
  store %struct.kyber_hctx_data* %16, %struct.kyber_hctx_data** %4, align 8
  %17 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %18 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %21 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** @kyber_batch_size, align 8
  %24 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %25 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %3, align 8
  %32 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %33 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %34 = call %struct.request* @kyber_dispatch_cur_domain(%struct.kyber_queue_data* %31, %struct.kyber_hctx_data* %32, %struct.blk_mq_hw_ctx* %33)
  store %struct.request* %34, %struct.request** %5, align 8
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = icmp ne %struct.request* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %75

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %41 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %71, %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @KYBER_NUM_DOMAINS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %48 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @KYBER_NUM_DOMAINS, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %56 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %59 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %3, align 8
  %64 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %65 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %66 = call %struct.request* @kyber_dispatch_cur_domain(%struct.kyber_queue_data* %63, %struct.kyber_hctx_data* %64, %struct.blk_mq_hw_ctx* %65)
  store %struct.request* %66, %struct.request** %5, align 8
  %67 = load %struct.request*, %struct.request** %5, align 8
  %68 = icmp ne %struct.request* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %75

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %42

74:                                               ; preds = %42
  store %struct.request* null, %struct.request** %5, align 8
  br label %75

75:                                               ; preds = %74, %69, %37
  %76 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %77 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %79
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.request* @kyber_dispatch_cur_domain(%struct.kyber_queue_data*, %struct.kyber_hctx_data*, %struct.blk_mq_hw_ctx*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
