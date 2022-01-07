; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_queue_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_queue_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdc_port*)* @vdc_queue_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdc_queue_drain(%struct.vdc_port* %0) #0 {
  %2 = alloca %struct.vdc_port*, align 8
  %3 = alloca %struct.request_queue*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %2, align 8
  %4 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %5 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %3, align 8
  %9 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %10 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %12 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock_irq(i32* %13)
  %15 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %16 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %15)
  %17 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %18 = call i32 @blk_mq_quiesce_queue(%struct.request_queue* %17)
  %19 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %20 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %24 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %26 = call i32 @blk_mq_unquiesce_queue(%struct.request_queue* %25)
  %27 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %28 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %27)
  ret void
}

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_quiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
