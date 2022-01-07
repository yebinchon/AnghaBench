; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_dwc_460ex.c_sata_dwc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_dwc_460ex.c_sata_dwc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ata_host = type { %struct.sata_dwc_device* }
%struct.sata_dwc_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sata_dwc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_dwc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.sata_dwc_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ata_host* @dev_get_drvdata(%struct.device* %8)
  store %struct.ata_host* %9, %struct.ata_host** %4, align 8
  %10 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %11 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %10, i32 0, i32 0
  %12 = load %struct.sata_dwc_device*, %struct.sata_dwc_device** %11, align 8
  store %struct.sata_dwc_device* %12, %struct.sata_dwc_device** %5, align 8
  %13 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %14 = call i32 @ata_host_detach(%struct.ata_host* %13)
  %15 = load %struct.sata_dwc_device*, %struct.sata_dwc_device** %5, align 8
  %16 = getelementptr inbounds %struct.sata_dwc_device, %struct.sata_dwc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phy_exit(i32 %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.ata_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ata_host_detach(%struct.ata_host*) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
