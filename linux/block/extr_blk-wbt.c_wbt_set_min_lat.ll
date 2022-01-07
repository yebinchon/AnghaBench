; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_set_min_lat.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_set_min_lat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.rq_qos = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@WBT_STATE_ON_MANUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wbt_set_min_lat(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rq_qos*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = call %struct.rq_qos* @wbt_rq_qos(%struct.request_queue* %6)
  store %struct.rq_qos* %7, %struct.rq_qos** %5, align 8
  %8 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %9 = icmp ne %struct.rq_qos* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %14 = call %struct.TYPE_3__* @RQWB(%struct.rq_qos* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @WBT_STATE_ON_MANUAL, align 4
  %17 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %18 = call %struct.TYPE_3__* @RQWB(%struct.rq_qos* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.rq_qos*, %struct.rq_qos** %5, align 8
  %21 = call %struct.TYPE_3__* @RQWB(%struct.rq_qos* %20)
  %22 = call i32 @__wbt_update_limits(%struct.TYPE_3__* %21)
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.rq_qos* @wbt_rq_qos(%struct.request_queue*) #1

declare dso_local %struct.TYPE_3__* @RQWB(%struct.rq_qos*) #1

declare dso_local i32 @__wbt_update_limits(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
