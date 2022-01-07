; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_get_smart_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_get_smart_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32 }
%struct.host_to_dev_fis = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_CMD_SMART = common dso_local global i32 0, align 4
@ATA_DEVICE_OBS = common dso_local global i32 0, align 4
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtip_port*, i32*, i32)* @mtip_get_smart_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_get_smart_data(%struct.mtip_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtip_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.host_to_dev_fis, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.host_to_dev_fis* %7, i32 0, i32 32)
  %9 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %7, i32 0, i32 0
  store i32 39, i32* %9, align 4
  %10 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %7, i32 0, i32 1
  store i32 128, i32* %10, align 4
  %11 = load i32, i32* @ATA_CMD_SMART, align 4
  %12 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %7, i32 0, i32 7
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %7, i32 0, i32 2
  store i32 208, i32* %13, align 4
  %14 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %7, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %7, i32 0, i32 4
  store i32 79, i32* %15, align 4
  %16 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %7, i32 0, i32 5
  store i32 194, i32* %16, align 4
  %17 = load i32, i32* @ATA_DEVICE_OBS, align 4
  %18 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %7, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ATA_SECT_SIZE, align 4
  %22 = call i32 @mtip_exec_internal_command(%struct.mtip_port* %19, %struct.host_to_dev_fis* %7, i32 5, i32 %20, i32 %21, i32 0, i32 15000)
  ret i32 %22
}

declare dso_local i32 @memset(%struct.host_to_dev_fis*, i32, i32) #1

declare dso_local i32 @mtip_exec_internal_command(%struct.mtip_port*, %struct.host_to_dev_fis*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
