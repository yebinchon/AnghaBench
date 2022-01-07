; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_rtas_msi_pci_irq_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_rtas_msi_pci_irq_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"rtas_msi: no LSI, nothing to do.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"rtas_msi: no req#msi/x, nothing to do.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"rtas_msi: disabling existing MSI.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rtas_msi_pci_irq_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtas_msi_pci_irq_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = call i64 @check_req_msi(%struct.pci_dev* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = call i64 @check_req_msix(%struct.pci_dev* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %29

23:                                               ; preds = %15, %11
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = call i32 @rtas_disable_msi(%struct.pci_dev* %27)
  br label %29

29:                                               ; preds = %23, %19, %7
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @check_req_msi(%struct.pci_dev*, i32) #1

declare dso_local i64 @check_req_msix(%struct.pci_dev*, i32) #1

declare dso_local i32 @rtas_disable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
