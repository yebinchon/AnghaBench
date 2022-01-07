; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, i32, %struct.nbd_config* }
%struct.nbd_config = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"NBD_DISCONNECT\0A\00", align 1
@NBD_RT_DISCONNECT_REQUESTED = common dso_local global i32 0, align 4
@NBD_DISCONNECT_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*)* @nbd_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_disconnect(%struct.nbd_device* %0) #0 {
  %2 = alloca %struct.nbd_device*, align 8
  %3 = alloca %struct.nbd_config*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %2, align 8
  %4 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %5 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %4, i32 0, i32 2
  %6 = load %struct.nbd_config*, %struct.nbd_config** %5, align 8
  store %struct.nbd_config* %6, %struct.nbd_config** %3, align 8
  %7 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %8 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @disk_to_dev(i32 %9)
  %11 = call i32 @dev_info(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @NBD_RT_DISCONNECT_REQUESTED, align 4
  %13 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %14 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load i32, i32* @NBD_DISCONNECT_REQUESTED, align 4
  %17 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %18 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %21 = call i32 @send_disconnects(%struct.nbd_device* %20)
  ret i32 0
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @disk_to_dev(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @send_disconnects(%struct.nbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
