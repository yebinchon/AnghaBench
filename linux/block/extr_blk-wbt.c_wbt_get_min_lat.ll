; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_get_min_lat.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_get_min_lat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.rq_qos = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wbt_get_min_lat(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.rq_qos*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = call %struct.rq_qos* @wbt_rq_qos(%struct.request_queue* %5)
  store %struct.rq_qos* %6, %struct.rq_qos** %4, align 8
  %7 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %8 = icmp ne %struct.rq_qos* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %12 = call %struct.TYPE_2__* @RQWB(%struct.rq_qos* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %10, %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local %struct.rq_qos* @wbt_rq_qos(%struct.request_queue*) #1

declare dso_local %struct.TYPE_2__* @RQWB(%struct.rq_qos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
