; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.c___rq_qos_track.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.c___rq_qos_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { %struct.rq_qos*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rq_qos*, %struct.request*, %struct.bio*)* }
%struct.request = type { i32 }
%struct.bio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rq_qos_track(%struct.rq_qos* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.rq_qos*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  br label %7

7:                                                ; preds = %28, %3
  %8 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %9 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.rq_qos*, %struct.request*, %struct.bio*)*, i32 (%struct.rq_qos*, %struct.request*, %struct.bio*)** %11, align 8
  %13 = icmp ne i32 (%struct.rq_qos*, %struct.request*, %struct.bio*)* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %16 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.rq_qos*, %struct.request*, %struct.bio*)*, i32 (%struct.rq_qos*, %struct.request*, %struct.bio*)** %18, align 8
  %20 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = load %struct.bio*, %struct.bio** %6, align 8
  %23 = call i32 %19(%struct.rq_qos* %20, %struct.request* %21, %struct.bio* %22)
  br label %24

24:                                               ; preds = %14, %7
  %25 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %26 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %25, i32 0, i32 0
  %27 = load %struct.rq_qos*, %struct.rq_qos** %26, align 8
  store %struct.rq_qos* %27, %struct.rq_qos** %4, align 8
  br label %28

28:                                               ; preds = %24
  %29 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %30 = icmp ne %struct.rq_qos* %29, null
  br i1 %30, label %7, label %31

31:                                               ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
