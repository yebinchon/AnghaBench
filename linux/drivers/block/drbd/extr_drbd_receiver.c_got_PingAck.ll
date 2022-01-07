; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_PingAck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_PingAck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.packet_info = type { i32 }

@HZ = common dso_local global i32 0, align 4
@GOT_PING_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.packet_info*)* @got_PingAck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @got_PingAck(%struct.drbd_connection* %0, %struct.packet_info* %1) #0 {
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca %struct.packet_info*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %3, align 8
  store %struct.packet_info* %1, %struct.packet_info** %4, align 8
  %5 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %6 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %5, i32 0, i32 2
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %13 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %11, i32* %18, align 4
  %19 = load i32, i32* @GOT_PING_ACK, align 4
  %20 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %21 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %20, i32 0, i32 1
  %22 = call i32 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %26 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  br label %28

28:                                               ; preds = %24, %2
  ret i32 0
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
