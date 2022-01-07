; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_sworks-agp.c_serverworks_agp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_sworks-agp.c_serverworks_agp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.agp_bridge_data = type { i64 }

@serverworks_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@PCI_AGP_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_bridge_data*, i32)* @serverworks_agp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serverworks_agp_enable(%struct.agp_bridge_data* %0, i32 %1) #0 {
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serverworks_private, i32 0, i32 0), align 4
  %7 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %8 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PCI_AGP_STATUS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @pci_read_config_dword(i32 %6, i64 %11, i32* %5)
  %13 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @agp_collect_device_status(%struct.agp_bridge_data* %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, -17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, -9
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 256
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serverworks_private, i32 0, i32 0), align 4
  %24 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %25 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_AGP_COMMAND, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pci_write_config_dword(i32 %23, i64 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @agp_device_command(i32 %31, i32 0)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @agp_collect_device_status(%struct.agp_bridge_data*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

declare dso_local i32 @agp_device_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
