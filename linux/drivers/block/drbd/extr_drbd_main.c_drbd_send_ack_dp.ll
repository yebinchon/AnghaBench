; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_ack_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_ack_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.p_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_send_ack_dp(%struct.drbd_peer_device* %0, i32 %1, %struct.p_data* %2, i32 %3) #0 {
  %5 = alloca %struct.drbd_peer_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p_data*, align 8
  %8 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.p_data* %2, %struct.p_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %10 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %17 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @crypto_shash_digestsize(i64 %20)
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %15, %4
  %27 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.p_data*, %struct.p_data** %7, align 8
  %30 = getelementptr inbounds %struct.p_data, %struct.p_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @cpu_to_be32(i32 %32)
  %34 = load %struct.p_data*, %struct.p_data** %7, align 8
  %35 = getelementptr inbounds %struct.p_data, %struct.p_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @_drbd_send_ack(%struct.drbd_peer_device* %27, i32 %28, i32 %31, i32 %33, i32 %36)
  ret void
}

declare dso_local i64 @crypto_shash_digestsize(i64) #1

declare dso_local i32 @_drbd_send_ack(%struct.drbd_peer_device*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
