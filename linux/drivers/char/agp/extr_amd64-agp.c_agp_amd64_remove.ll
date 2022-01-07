; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_agp_amd64_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_amd64-agp.c_agp_amd64_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.agp_bridge_data = type { i64, i32 }

@amd64_aperture_sizes = common dso_local global %struct.TYPE_2__* null, align 8
@agp_bridges_found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @agp_amd64_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_amd64_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.agp_bridge_data*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.agp_bridge_data* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.agp_bridge_data* %5, %struct.agp_bridge_data** %3, align 8
  %6 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %7 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @virt_to_phys(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amd64_aperture_sizes, align 8
  %11 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %12 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @release_mem_region(i32 %9, i32 %16)
  %18 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %19 = call i32 @agp_remove_bridge(%struct.agp_bridge_data* %18)
  %20 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %21 = call i32 @agp_put_bridge(%struct.agp_bridge_data* %20)
  %22 = load i32, i32* @agp_bridges_found, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @agp_bridges_found, align 4
  ret void
}

declare dso_local %struct.agp_bridge_data* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @agp_remove_bridge(%struct.agp_bridge_data*) #1

declare dso_local i32 @agp_put_bridge(%struct.agp_bridge_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
