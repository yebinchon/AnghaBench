; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_wait_for_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_wait_for_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { %struct.nbd_config* }
%struct.nbd_config = type { i32, i32, i32, i32 }

@NBD_RT_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*)* @wait_for_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_reconnect(%struct.nbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbd_device*, align 8
  %4 = alloca %struct.nbd_config*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %3, align 8
  %5 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %6 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %5, i32 0, i32 0
  %7 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  store %struct.nbd_config* %7, %struct.nbd_config** %4, align 8
  %8 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %9 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* @NBD_RT_DISCONNECTED, align 4
  %15 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %16 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %15, i32 0, i32 3
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %35

20:                                               ; preds = %13
  %21 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %22 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %25 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %24, i32 0, i32 1
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp sgt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %30 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wait_event_timeout(i32 %23, i32 %28, i32 %31)
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %20, %19, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
