; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_scan_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"66mhz-capable\00", align 1
@PBM_CHIP_TYPE_TOMATILLO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*, %struct.device*)* @schizo_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schizo_scan_bus(%struct.pci_pbm_info* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %6 = call i32 @pbm_config_busmastering(%struct.pci_pbm_info* %5)
  %7 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %8 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @of_find_property(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null)
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %17 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @pci_scan_one_pbm(%struct.pci_pbm_info* %18, %struct.device* %19)
  %21 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %22 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %24 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PBM_CHIP_TYPE_TOMATILLO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %30 = call i32 @tomatillo_register_error_handlers(%struct.pci_pbm_info* %29)
  br label %34

31:                                               ; preds = %2
  %32 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %33 = call i32 @schizo_register_error_handlers(%struct.pci_pbm_info* %32)
  br label %34

34:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @pbm_config_busmastering(%struct.pci_pbm_info*) #1

declare dso_local i32* @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @pci_scan_one_pbm(%struct.pci_pbm_info*, %struct.device*) #1

declare dso_local i32 @tomatillo_register_error_handlers(%struct.pci_pbm_info*) #1

declare dso_local i32 @schizo_register_error_handlers(%struct.pci_pbm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
