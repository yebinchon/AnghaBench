; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32 }
%struct.request = type { i32 }
%struct.work_struct = type { i32 }

@rbd_queue_workfn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @rbd_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tag_set*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.work_struct*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.request*, %struct.request** %6, align 8
  %11 = call %struct.work_struct* @blk_mq_rq_to_pdu(%struct.request* %10)
  store %struct.work_struct* %11, %struct.work_struct** %9, align 8
  %12 = load %struct.work_struct*, %struct.work_struct** %9, align 8
  %13 = load i32, i32* @rbd_queue_workfn, align 4
  %14 = call i32 @INIT_WORK(%struct.work_struct* %12, i32 %13)
  ret i32 0
}

declare dso_local %struct.work_struct* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @INIT_WORK(%struct.work_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
