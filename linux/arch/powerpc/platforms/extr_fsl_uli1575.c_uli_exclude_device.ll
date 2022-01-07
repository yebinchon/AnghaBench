; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_uli_exclude_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_uli_exclude_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i64 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uli_exclude_device(%struct.pci_controller* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %10 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 2
  %13 = icmp eq i64 %8, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @PCI_SLOT(i64 %15)
  %17 = icmp eq i32 %16, 29
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @PCI_FUNC(i64 %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %23, i32* %4, align 4
  br label %37

24:                                               ; preds = %18, %14
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @PCI_SLOT(i64 %25)
  %27 = icmp eq i32 %26, 29
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @PCI_FUNC(i64 %29)
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %28, %24
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %32, %22
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @PCI_SLOT(i64) #1

declare dso_local i32 @PCI_FUNC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
