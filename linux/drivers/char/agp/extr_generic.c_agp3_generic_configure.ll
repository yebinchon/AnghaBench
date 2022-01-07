; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp3_generic_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp3_generic_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }
%struct.aper_size_info_16 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@AGP_APERTURE_BAR = common dso_local global i32 0, align 4
@AGPAPSIZE = common dso_local global i64 0, align 8
@AGPGARTLO = common dso_local global i64 0, align 8
@AGPCTRL = common dso_local global i64 0, align 8
@AGPCTRL_APERENB = common dso_local global i32 0, align 4
@AGPCTRL_GTLBEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp3_generic_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aper_size_info_16*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = call %struct.aper_size_info_16* @A_SIZE_16(i32 %5)
  store %struct.aper_size_info_16* %6, %struct.aper_size_info_16** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AGP_APERTURE_BAR, align 4
  %11 = call i32 @pci_bus_address(i32 %9, i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AGPAPSIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.aper_size_info_16*, %struct.aper_size_info_16** %2, align 8
  %23 = getelementptr inbounds %struct.aper_size_info_16, %struct.aper_size_info_16* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_write_config_word(i32 %16, i64 %21, i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AGPGARTLO, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_write_config_dword(i32 %28, i64 %33, i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AGPCTRL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @pci_read_config_dword(i32 %40, i64 %45, i32* %1)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AGPCTRL, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @AGPCTRL_APERENB, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @AGPCTRL_GTLBEN, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @pci_write_config_dword(i32 %49, i64 %54, i32 %59)
  ret i32 0
}

declare dso_local %struct.aper_size_info_16* @A_SIZE_16(i32) #1

declare dso_local i32 @pci_bus_address(i32, i32) #1

declare dso_local i32 @pci_write_config_word(i32, i64, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
