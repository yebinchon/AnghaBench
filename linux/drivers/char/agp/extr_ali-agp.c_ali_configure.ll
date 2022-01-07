; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_ali-agp.c_ali_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_ali-agp.c_ali_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.aper_size_info_32 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@ALI_ATTBASE = common dso_local global i32 0, align 4
@ALI_TLBCTRL = common dso_local global i32 0, align 4
@AGP_APERTURE_BAR = common dso_local global i32 0, align 4
@ALI_M1541 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ali_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aper_size_info_32*, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = call %struct.aper_size_info_32* @A_SIZE_32(i32 %5)
  store %struct.aper_size_info_32* %6, %struct.aper_size_info_32** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load i32, i32* @ALI_ATTBASE, align 4
  %11 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %9, i32 %10, i32* %1)
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, 4080
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, -4096
  %18 = or i32 %13, %17
  %19 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %2, align 8
  %20 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  %23 = or i32 %18, %22
  store i32 %23, i32* %1, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* @ALI_ATTBASE, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* @ALI_TLBCTRL, align 4
  %34 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %32, i32 %33, i32* %1)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* @ALI_TLBCTRL, align 4
  %39 = load i32, i32* %1, align 4
  %40 = and i32 %39, -256
  %41 = or i32 %40, 16
  %42 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %37, i32 %38, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* @AGP_APERTURE_BAR, align 4
  %47 = call i32 @pci_bus_address(%struct.TYPE_5__* %45, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* @ALI_TLBCTRL, align 4
  %54 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %52, i32 %53, i32* %1)
  %55 = load i32, i32* %1, align 4
  %56 = and i32 %55, -129
  store i32 %56, i32* %1, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* @ALI_TLBCTRL, align 4
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %59, i32 %60, i32 %61)
  ret i32 0
}

declare dso_local %struct.aper_size_info_32* @A_SIZE_32(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pci_bus_address(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
