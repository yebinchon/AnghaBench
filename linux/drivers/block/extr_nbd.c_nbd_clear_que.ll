; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_clear_que.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_clear_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@nbd_clear_req = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"queue cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*)* @nbd_clear_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_clear_que(%struct.nbd_device* %0) #0 {
  %2 = alloca %struct.nbd_device*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %2, align 8
  %3 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %4 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @blk_mq_quiesce_queue(i32 %7)
  %9 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %10 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %9, i32 0, i32 1
  %11 = load i32, i32* @nbd_clear_req, align 4
  %12 = call i32 @blk_mq_tagset_busy_iter(i32* %10, i32 %11, i32* null)
  %13 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %14 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @blk_mq_unquiesce_queue(i32 %17)
  %19 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %20 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @disk_to_dev(%struct.TYPE_2__* %21)
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @blk_mq_quiesce_queue(i32) #1

declare dso_local i32 @blk_mq_tagset_busy_iter(i32*, i32, i32*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @disk_to_dev(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
