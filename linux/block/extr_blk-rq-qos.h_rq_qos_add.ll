; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.h_rq_qos_add.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.h_rq_qos_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.rq_qos* }
%struct.rq_qos = type { %struct.TYPE_2__*, %struct.rq_qos* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.rq_qos*)* @rq_qos_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rq_qos_add(%struct.request_queue* %0, %struct.rq_qos* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.rq_qos*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.rq_qos* %1, %struct.rq_qos** %4, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 0
  %7 = load %struct.rq_qos*, %struct.rq_qos** %6, align 8
  %8 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %9 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %8, i32 0, i32 1
  store %struct.rq_qos* %7, %struct.rq_qos** %9, align 8
  %10 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  store %struct.rq_qos* %10, %struct.rq_qos** %12, align 8
  %13 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %14 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %21 = call i32 @blk_mq_debugfs_register_rqos(%struct.rq_qos* %20)
  br label %22

22:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @blk_mq_debugfs_register_rqos(%struct.rq_qos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
