; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_disable_default.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_disable_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.rq_qos = type { i32 }
%struct.rq_wb = type { i64, i64, i32 }

@WBT_STATE_ON_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wbt_disable_default(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.rq_qos*, align 8
  %4 = alloca %struct.rq_wb*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %6 = call %struct.rq_qos* @wbt_rq_qos(%struct.request_queue* %5)
  store %struct.rq_qos* %6, %struct.rq_qos** %3, align 8
  %7 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %8 = icmp ne %struct.rq_qos* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %12 = call %struct.rq_wb* @RQWB(%struct.rq_qos* %11)
  store %struct.rq_wb* %12, %struct.rq_wb** %4, align 8
  %13 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %14 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WBT_STATE_ON_DEFAULT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %20 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @blk_stat_deactivate(i32 %21)
  %23 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %24 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %9, %18, %10
  ret void
}

declare dso_local %struct.rq_qos* @wbt_rq_qos(%struct.request_queue*) #1

declare dso_local %struct.rq_wb* @RQWB(%struct.rq_qos*) #1

declare dso_local i32 @blk_stat_deactivate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
