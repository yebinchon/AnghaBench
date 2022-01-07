; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_generic_find_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_generic_find_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { i32 }
%struct.pci_dev = type { i32 }

@agp_bridges = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.agp_bridge_data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agp_bridge_data* @agp_generic_find_bridge(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.agp_bridge_data*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %4 = call i64 @list_empty(i32* @agp_bridges)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.agp_bridge_data* null, %struct.agp_bridge_data** %2, align 8
  br label %9

7:                                                ; preds = %1
  %8 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** @agp_bridge, align 8
  store %struct.agp_bridge_data* %8, %struct.agp_bridge_data** %2, align 8
  br label %9

9:                                                ; preds = %7, %6
  %10 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %2, align 8
  ret %struct.agp_bridge_data* %10
}

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
