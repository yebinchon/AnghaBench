; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_release_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_release_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"not flushing cache\0A\00", align 1
@MAX_SPEED = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*, i32)* @pkt_release_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_release_dev(%struct.pktcdvd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %9 = call i64 @pkt_flush_cache(%struct.pktcdvd_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %13 = call i32 @pkt_dbg(i32 1, %struct.pktcdvd_device* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %16 = call i32 @pkt_lock_door(%struct.pktcdvd_device* %15, i32 0)
  %17 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %18 = load i32, i32* @MAX_SPEED, align 4
  %19 = load i32, i32* @MAX_SPEED, align 4
  %20 = call i32 @pkt_set_speed(%struct.pktcdvd_device* %17, i32 %18, i32 %19)
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %22 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FMODE_READ, align 4
  %25 = load i32, i32* @FMODE_EXCL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @blkdev_put(i32 %23, i32 %26)
  %28 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %29 = call i32 @pkt_shrink_pktlist(%struct.pktcdvd_device* %28)
  ret void
}

declare dso_local i64 @pkt_flush_cache(%struct.pktcdvd_device*) #1

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*) #1

declare dso_local i32 @pkt_lock_door(%struct.pktcdvd_device*, i32) #1

declare dso_local i32 @pkt_set_speed(%struct.pktcdvd_device*, i32, i32) #1

declare dso_local i32 @blkdev_put(i32, i32) #1

declare dso_local i32 @pkt_shrink_pktlist(%struct.pktcdvd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
