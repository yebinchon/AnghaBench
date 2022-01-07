; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_intel_815_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_intel_815_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.aper_size_info_8 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_8__* null, align 8
@INTEL_815_ATTBASE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"gatt bus addr too high\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTEL_APSIZE = common dso_local global i32 0, align 4
@AGP_APERTURE_BAR = common dso_local global i32 0, align 4
@INTEL_ATTBASE = common dso_local global i32 0, align 4
@INTEL_AGPCTRL = common dso_local global i32 0, align 4
@INTEL_815_APCONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_815_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_815_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aper_size_info_8*, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @INTEL_815_ATTBASE_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = call i32 @dev_emerg(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %75

19:                                               ; preds = %0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %22)
  store %struct.aper_size_info_8* %23, %struct.aper_size_info_8** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* @INTEL_APSIZE, align 4
  %28 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %4, align 8
  %29 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci_write_config_byte(%struct.TYPE_7__* %26, i32 %27, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* @AGP_APERTURE_BAR, align 4
  %36 = call i32 @pci_bus_address(%struct.TYPE_7__* %34, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* @INTEL_ATTBASE, align 4
  %43 = call i32 @pci_read_config_dword(%struct.TYPE_7__* %41, i32 %42, i32* %2)
  %44 = load i32, i32* @INTEL_815_ATTBASE_MASK, align 4
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %2, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %2, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* @INTEL_ATTBASE, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @pci_write_config_dword(%struct.TYPE_7__* %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* @INTEL_AGPCTRL, align 4
  %62 = call i32 @pci_write_config_dword(%struct.TYPE_7__* %60, i32 %61, i32 0)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* @INTEL_815_APCONT, align 4
  %67 = call i32 @pci_read_config_byte(%struct.TYPE_7__* %65, i32 %66, i32* %3)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* @INTEL_815_APCONT, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, 2
  %74 = call i32 @pci_write_config_byte(%struct.TYPE_7__* %70, i32 %71, i32 %73)
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %19, %11
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @dev_emerg(i32*, i8*) #1

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @pci_bus_address(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
