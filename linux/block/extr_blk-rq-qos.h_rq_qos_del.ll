; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.h_rq_qos_del.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.h_rq_qos_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.rq_qos* }
%struct.rq_qos = type { %struct.rq_qos* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.rq_qos*)* @rq_qos_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rq_qos_del(%struct.request_queue* %0, %struct.rq_qos* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.rq_qos*, align 8
  %5 = alloca %struct.rq_qos**, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.rq_qos* %1, %struct.rq_qos** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  store %struct.rq_qos** %7, %struct.rq_qos*** %5, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load %struct.rq_qos**, %struct.rq_qos*** %5, align 8
  %10 = load %struct.rq_qos*, %struct.rq_qos** %9, align 8
  %11 = icmp ne %struct.rq_qos* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.rq_qos**, %struct.rq_qos*** %5, align 8
  %14 = load %struct.rq_qos*, %struct.rq_qos** %13, align 8
  %15 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %16 = icmp eq %struct.rq_qos* %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %19 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %18, i32 0, i32 0
  %20 = load %struct.rq_qos*, %struct.rq_qos** %19, align 8
  %21 = load %struct.rq_qos**, %struct.rq_qos*** %5, align 8
  store %struct.rq_qos* %20, %struct.rq_qos** %21, align 8
  br label %27

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.rq_qos**, %struct.rq_qos*** %5, align 8
  %25 = load %struct.rq_qos*, %struct.rq_qos** %24, align 8
  %26 = getelementptr inbounds %struct.rq_qos, %struct.rq_qos* %25, i32 0, i32 0
  store %struct.rq_qos** %26, %struct.rq_qos*** %5, align 8
  br label %8

27:                                               ; preds = %17, %8
  %28 = load %struct.rq_qos*, %struct.rq_qos** %4, align 8
  %29 = call i32 @blk_mq_debugfs_unregister_rqos(%struct.rq_qos* %28)
  ret void
}

declare dso_local i32 @blk_mq_debugfs_unregister_rqos(%struct.rq_qos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
