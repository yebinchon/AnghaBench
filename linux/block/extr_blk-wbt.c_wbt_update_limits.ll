; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_update_limits.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_update_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.rq_qos = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wbt_update_limits(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.rq_qos*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = call %struct.rq_qos* @wbt_rq_qos(%struct.request_queue* %4)
  store %struct.rq_qos* %5, %struct.rq_qos** %3, align 8
  %6 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %7 = icmp ne %struct.rq_qos* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %11 = call i32 @RQWB(%struct.rq_qos* %10)
  %12 = call i32 @__wbt_update_limits(i32 %11)
  br label %13

13:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.rq_qos* @wbt_rq_qos(%struct.request_queue*) #1

declare dso_local i32 @__wbt_update_limits(i32) #1

declare dso_local i32 @RQWB(%struct.rq_qos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
