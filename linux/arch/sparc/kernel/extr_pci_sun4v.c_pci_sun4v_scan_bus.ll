; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_pci_sun4v_scan_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sun4v.c_pci_sun4v_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"66mhz-capable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*, %struct.device*)* @pci_sun4v_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_sun4v_scan_bus(%struct.pci_pbm_info* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %8 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call %struct.property* @of_find_property(%struct.device_node* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %14, %struct.property** %5, align 8
  %15 = load %struct.property*, %struct.property** %5, align 8
  %16 = icmp ne %struct.property* %15, null
  %17 = zext i1 %16 to i32
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %19 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @pci_scan_one_pbm(%struct.pci_pbm_info* %20, %struct.device* %21)
  %23 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %24 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  ret void
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pci_scan_one_pbm(%struct.pci_pbm_info*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
