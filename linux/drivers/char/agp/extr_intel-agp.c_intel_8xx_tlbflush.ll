; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_intel_8xx_tlbflush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-agp.c_intel_8xx_tlbflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.agp_memory = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@INTEL_AGPCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_memory*)* @intel_8xx_tlbflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_8xx_tlbflush(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @INTEL_AGPCTRL, align 4
  %8 = call i32 @pci_read_config_dword(i32 %6, i32 %7, i32* %3)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INTEL_AGPCTRL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -129
  %15 = call i32 @pci_write_config_dword(i32 %11, i32 %12, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INTEL_AGPCTRL, align 4
  %20 = call i32 @pci_read_config_dword(i32 %18, i32 %19, i32* %3)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INTEL_AGPCTRL, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 128
  %27 = call i32 @pci_write_config_dword(i32 %23, i32 %24, i32 %26)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
