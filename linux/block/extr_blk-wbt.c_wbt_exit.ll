; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_exit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.rq_wb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_qos*)* @wbt_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbt_exit(%struct.rq_qos* %0) #0 {
  %2 = alloca %struct.rq_qos*, align 8
  %3 = alloca %struct.rq_wb*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %2, align 8
  %5 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %6 = call %struct.rq_wb* @RQWB(%struct.rq_qos* %5)
  store %struct.rq_wb* %6, %struct.rq_wb** %3, align 8
  %7 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %8 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %7, i32 0, i32 0
  %9 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  store %struct.request_queue* %9, %struct.request_queue** %4, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %11 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %12 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @blk_stat_remove_callback(%struct.request_queue* %10, i32 %13)
  %15 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %16 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @blk_stat_free_callback(i32 %17)
  %19 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %20 = call i32 @kfree(%struct.rq_wb* %19)
  ret void
}

declare dso_local %struct.rq_wb* @RQWB(%struct.rq_qos*) #1

declare dso_local i32 @blk_stat_remove_callback(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_stat_free_callback(i32) #1

declare dso_local i32 @kfree(%struct.rq_wb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
