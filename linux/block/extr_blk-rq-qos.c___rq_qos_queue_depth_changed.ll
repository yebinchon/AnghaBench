; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.c___rq_qos_queue_depth_changed.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.c___rq_qos_queue_depth_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { %struct.rq_qos*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rq_qos*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rq_qos_queue_depth_changed(%struct.rq_qos* %0) #0 {
  %2 = alloca %struct.rq_qos*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %2, align 8
  br label %3

3:                                                ; preds = %22, %1
  %4 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %5 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.rq_qos*)*, i32 (%struct.rq_qos*)** %7, align 8
  %9 = icmp ne i32 (%struct.rq_qos*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %12 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.rq_qos*)*, i32 (%struct.rq_qos*)** %14, align 8
  %16 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %17 = call i32 %15(%struct.rq_qos* %16)
  br label %18

18:                                               ; preds = %10, %3
  %19 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %20 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %19, i32 0, i32 0
  %21 = load %struct.rq_qos*, %struct.rq_qos** %20, align 8
  store %struct.rq_qos* %21, %struct.rq_qos** %2, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load %struct.rq_qos*, %struct.rq_qos** %2, align 8
  %24 = icmp ne %struct.rq_qos* %23, null
  br i1 %24, label %3, label %25

25:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
