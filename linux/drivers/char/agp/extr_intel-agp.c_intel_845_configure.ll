; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_intel_845_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_intel_845_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.aper_size_info_8 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@INTEL_APSIZE = common dso_local global i32 0, align 4
@AGP_APBASE = common dso_local global i32 0, align 4
@AGP_APERTURE_BAR = common dso_local global i32 0, align 4
@INTEL_ATTBASE = common dso_local global i32 0, align 4
@INTEL_AGPCTRL = common dso_local global i32 0, align 4
@INTEL_I845_AGPM = common dso_local global i32 0, align 4
@INTEL_I845_ERRSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_845_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_845_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aper_size_info_8*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %5)
  store %struct.aper_size_info_8* %6, %struct.aper_size_info_8** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @INTEL_APSIZE, align 4
  %11 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %2, align 8
  %12 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_write_config_byte(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AGP_APBASE, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @pci_write_config_dword(i32 %22, i32 %23, i32 %27)
  br label %43

29:                                               ; preds = %0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AGP_APERTURE_BAR, align 4
  %34 = call i32 @pci_bus_address(i32 %32, i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %29, %19
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @INTEL_ATTBASE, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pci_write_config_dword(i32 %46, i32 %47, i32 %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @INTEL_AGPCTRL, align 4
  %56 = call i32 @pci_write_config_dword(i32 %54, i32 %55, i32 0)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @INTEL_I845_AGPM, align 4
  %61 = call i32 @pci_read_config_byte(i32 %59, i32 %60, i32* %1)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @INTEL_I845_AGPM, align 4
  %66 = load i32, i32* %1, align 4
  %67 = or i32 %66, 2
  %68 = call i32 @pci_write_config_byte(i32 %64, i32 %65, i32 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @INTEL_I845_ERRSTS, align 4
  %73 = call i32 @pci_write_config_word(i32 %71, i32 %72, i32 28)
  ret i32 0
}

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_bus_address(i32, i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
