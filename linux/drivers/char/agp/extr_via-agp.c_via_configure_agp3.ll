; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_via-agp.c_via_configure_agp3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_via-agp.c_via_configure_agp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.aper_size_info_16 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@AGP_APERTURE_BAR = common dso_local global i32 0, align 4
@VIA_AGP3_ATTBASE = common dso_local global i32 0, align 4
@VIA_AGP3_GARTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @via_configure_agp3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_configure_agp3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aper_size_info_16*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.aper_size_info_16* @A_SIZE_16(i32 %5)
  store %struct.aper_size_info_16* %6, %struct.aper_size_info_16** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AGP_APERTURE_BAR, align 4
  %11 = call i32 @pci_bus_address(i32 %9, i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VIA_AGP3_ATTBASE, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, -4096
  %22 = call i32 @pci_write_config_dword(i32 %16, i32 %17, i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VIA_AGP3_GARTCTRL, align 4
  %27 = call i32 @pci_read_config_dword(i32 %25, i32 %26, i32* %1)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VIA_AGP3_GARTCTRL, align 4
  %32 = load i32, i32* %1, align 4
  %33 = or i32 %32, 384
  %34 = call i32 @pci_write_config_dword(i32 %30, i32 %31, i32 %33)
  ret i32 0
}

declare dso_local %struct.aper_size_info_16* @A_SIZE_16(i32) #1

declare dso_local i32 @pci_bus_address(i32, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
