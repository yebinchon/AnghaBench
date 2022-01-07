; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_intel_830mp_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_intel_830mp_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.aper_size_info_8 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@INTEL_APSIZE = common dso_local global i32 0, align 4
@AGP_APERTURE_BAR = common dso_local global i32 0, align 4
@INTEL_ATTBASE = common dso_local global i32 0, align 4
@INTEL_AGPCTRL = common dso_local global i32 0, align 4
@INTEL_NBXCFG = common dso_local global i32 0, align 4
@INTEL_I830_ERRSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_830mp_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_830mp_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aper_size_info_8*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %5)
  store %struct.aper_size_info_8* %6, %struct.aper_size_info_8** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @INTEL_APSIZE, align 4
  %11 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %2, align 8
  %12 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_write_config_byte(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AGP_APERTURE_BAR, align 4
  %19 = call i32 @pci_bus_address(i32 %17, i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INTEL_ATTBASE, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_write_config_dword(i32 %24, i32 %25, i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INTEL_AGPCTRL, align 4
  %34 = call i32 @pci_write_config_dword(i32 %32, i32 %33, i32 0)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @INTEL_NBXCFG, align 4
  %39 = call i32 @pci_read_config_word(i32 %37, i32 %38, i32* %1)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INTEL_NBXCFG, align 4
  %44 = load i32, i32* %1, align 4
  %45 = or i32 %44, 512
  %46 = call i32 @pci_write_config_word(i32 %42, i32 %43, i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @INTEL_I830_ERRSTS, align 4
  %51 = call i32 @pci_write_config_word(i32 %49, i32 %50, i32 28)
  ret i32 0
}

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_bus_address(i32, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
