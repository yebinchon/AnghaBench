; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_gart_fixup_northbridges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_gart_64.c_gart_fixup_northbridges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@fix_up_north_bridges = common dso_local global i32 0, align 4
@AMD_NB_GART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PCI-DMA: Restoring GART aperture settings\0A\00", align 1
@aperture_order = common dso_local global i32 0, align 4
@AMD64_GARTAPERTUREBASE = common dso_local global i32 0, align 4
@aperture_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gart_fixup_northbridges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gart_fixup_northbridges() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_dev*, align 8
  %3 = load i32, i32* @fix_up_north_bridges, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %33

6:                                                ; preds = %0
  %7 = load i32, i32* @AMD_NB_GART, align 4
  %8 = call i32 @amd_nb_has_feature(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %33

11:                                               ; preds = %6
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %30, %11
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (...) @amd_nb_num()
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = call %struct.TYPE_2__* @node_to_amd_nb(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %2, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = load i32, i32* @aperture_order, align 4
  %24 = call i32 @gart_set_size_and_enable(%struct.pci_dev* %22, i32 %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* @AMD64_GARTAPERTUREBASE, align 4
  %27 = load i32, i32* @aperture_alloc, align 4
  %28 = ashr i32 %27, 25
  %29 = call i32 @pci_write_config_dword(%struct.pci_dev* %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %13

33:                                               ; preds = %5, %10, %13
  ret void
}

declare dso_local i32 @amd_nb_has_feature(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @amd_nb_num(...) #1

declare dso_local %struct.TYPE_2__* @node_to_amd_nb(i32) #1

declare dso_local i32 @gart_set_size_and_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
