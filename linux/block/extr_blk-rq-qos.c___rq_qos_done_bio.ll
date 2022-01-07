; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.c___rq_qos_done_bio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.c___rq_qos_done_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { %struct.rq_qos*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rq_qos*, %struct.bio*)* }
%struct.bio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rq_qos_done_bio(%struct.rq_qos* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.rq_qos*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  br label %5

5:                                                ; preds = %25, %2
  %6 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %7 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.rq_qos*, %struct.bio*)*, i32 (%struct.rq_qos*, %struct.bio*)** %9, align 8
  %11 = icmp ne i32 (%struct.rq_qos*, %struct.bio*)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %14 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.rq_qos*, %struct.bio*)*, i32 (%struct.rq_qos*, %struct.bio*)** %16, align 8
  %18 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = call i32 %17(%struct.rq_qos* %18, %struct.bio* %19)
  br label %21

21:                                               ; preds = %12, %5
  %22 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %23 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %22, i32 0, i32 0
  %24 = load %struct.rq_qos*, %struct.rq_qos** %23, align 8
  store %struct.rq_qos* %24, %struct.rq_qos** %3, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %27 = icmp ne %struct.rq_qos* %26, null
  br i1 %27, label %5, label %28

28:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
