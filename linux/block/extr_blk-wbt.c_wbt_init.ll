; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.rq_wb = type { i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.request_queue*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wb_timer_fn = common dso_local global i32 0, align 4
@wbt_data_dir = common dso_local global i32 0, align 4
@WBT_NUM_RWQ = common dso_local global i32 0, align 4
@RQ_QOS_WBT = common dso_local global i32 0, align 4
@wbt_rqos_ops = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RWB_WINDOW_NSEC = common dso_local global i32 0, align 4
@WBT_STATE_ON_DEFAULT = common dso_local global i32 0, align 4
@RWB_DEF_DEPTH = common dso_local global i32 0, align 4
@QUEUE_FLAG_WC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wbt_init(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.rq_wb*, align 8
  %5 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.rq_wb* @kzalloc(i32 72, i32 %6)
  store %struct.rq_wb* %7, %struct.rq_wb** %4, align 8
  %8 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %9 = icmp ne %struct.rq_wb* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %98

13:                                               ; preds = %1
  %14 = load i32, i32* @wb_timer_fn, align 4
  %15 = load i32, i32* @wbt_data_dir, align 4
  %16 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %17 = call i32 @blk_stat_alloc_callback(i32 %14, i32 %15, i32 2, %struct.rq_wb* %16)
  %18 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %19 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %21 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %13
  %25 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %26 = call i32 @kfree(%struct.rq_wb* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %98

29:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %42, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @WBT_NUM_RWQ, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %36 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %35, i32 0, i32 9
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @rq_wait_init(i32* %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load i32, i32* @RQ_QOS_WBT, align 4
  %47 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %48 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %51 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32* @wbt_rqos_ops, i32** %52, align 8
  %53 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %54 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %55 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store %struct.request_queue* %53, %struct.request_queue** %56, align 8
  %57 = load i32, i32* @jiffies, align 4
  %58 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %59 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %61 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %60, i32 0, i32 8
  store i32 %57, i32* %61, align 8
  %62 = load i32, i32* @RWB_WINDOW_NSEC, align 4
  %63 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %64 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @WBT_STATE_ON_DEFAULT, align 4
  %66 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %67 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %69 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @RWB_DEF_DEPTH, align 4
  %71 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %72 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %75 = call i32 @__wbt_update_limits(%struct.rq_wb* %74)
  %76 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %77 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %78 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %77, i32 0, i32 1
  %79 = call i32 @rq_qos_add(%struct.request_queue* %76, %struct.TYPE_5__* %78)
  %80 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %81 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %82 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @blk_stat_add_callback(%struct.request_queue* %80, i32 %83)
  %85 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %86 = call i32 @wbt_default_latency_nsec(%struct.request_queue* %85)
  %87 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %88 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %90 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %89, i32 0, i32 1
  %91 = call i32 @wbt_queue_depth_changed(%struct.TYPE_5__* %90)
  %92 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %93 = load i32, i32* @QUEUE_FLAG_WC, align 4
  %94 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %95 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %94, i32 0, i32 0
  %96 = call i32 @test_bit(i32 %93, i32* %95)
  %97 = call i32 @wbt_set_write_cache(%struct.request_queue* %92, i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %45, %24, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.rq_wb* @kzalloc(i32, i32) #1

declare dso_local i32 @blk_stat_alloc_callback(i32, i32, i32, %struct.rq_wb*) #1

declare dso_local i32 @kfree(%struct.rq_wb*) #1

declare dso_local i32 @rq_wait_init(i32*) #1

declare dso_local i32 @__wbt_update_limits(%struct.rq_wb*) #1

declare dso_local i32 @rq_qos_add(%struct.request_queue*, %struct.TYPE_5__*) #1

declare dso_local i32 @blk_stat_add_callback(%struct.request_queue*, i32) #1

declare dso_local i32 @wbt_default_latency_nsec(%struct.request_queue*) #1

declare dso_local i32 @wbt_queue_depth_changed(%struct.TYPE_5__*) #1

declare dso_local i32 @wbt_set_write_cache(%struct.request_queue*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
