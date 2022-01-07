; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_unplug_all_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_unplug_all_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.drbd_connection = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_connection*)* @drbd_unplug_all_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_unplug_all_devices(%struct.drbd_connection* %0) #0 {
  %2 = alloca %struct.drbd_connection*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %7 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %6, i32 0, i32 0
  %8 = icmp eq i32* %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %11 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %10, i32 0, i32 0
  %12 = call i32 @blk_finish_plug(i32* %11)
  %13 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %14 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %13, i32 0, i32 0
  %15 = call i32 @blk_start_plug(i32* %14)
  br label %16

16:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @blk_finish_plug(i32*) #1

declare dso_local i32 @blk_start_plug(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
