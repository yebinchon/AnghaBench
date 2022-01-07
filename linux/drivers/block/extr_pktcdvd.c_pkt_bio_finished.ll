; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_bio_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_bio_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"queue empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*)* @pkt_bio_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_bio_finished(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca %struct.pktcdvd_device*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %2, align 8
  %3 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %4 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i64 @atomic_read(i32* %5)
  %7 = icmp sle i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %11 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i64 @atomic_dec_and_test(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %17 = call i32 @pkt_dbg(i32 2, %struct.pktcdvd_device* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %19 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @atomic_set(i32* %20, i32 1)
  %22 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %23 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %22, i32 0, i32 0
  %24 = call i32 @wake_up(i32* %23)
  br label %25

25:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
