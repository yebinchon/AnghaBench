; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_softirq_done_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_softirq_done_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.driver_data* }
%struct.driver_data = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mtip_cmd = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @mtip_softirq_done_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_softirq_done_fn(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.mtip_cmd*, align 8
  %4 = alloca %struct.driver_data*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = call %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request* %5)
  store %struct.mtip_cmd* %6, %struct.mtip_cmd** %3, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.driver_data*, %struct.driver_data** %10, align 8
  store %struct.driver_data* %11, %struct.driver_data** %4, align 8
  %12 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.mtip_cmd*, %struct.mtip_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mtip_cmd*, %struct.mtip_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mtip_cmd*, %struct.mtip_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_unmap_sg(i32* %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.mtip_cmd*, %struct.mtip_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %33 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @atomic_inc(i32* %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.request*, %struct.request** %2, align 8
  %39 = load %struct.mtip_cmd*, %struct.mtip_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @blk_mq_end_request(%struct.request* %38, i32 %41)
  ret void
}

declare dso_local %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
