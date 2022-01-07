; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_find_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_find_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32 }

@PCI_CAPABILITY_LIST = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_CAP_LIST = common dso_local global i32 0, align 4
@PCI_CAP_LIST_ID = common dso_local global i32 0, align 4
@PCI_CAP_LIST_NEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, i32)* @pnv_eeh_find_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_eeh_find_cap(%struct.pci_dn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @PCI_CAPABILITY_LIST, align 4
  store i32 %10, i32* %6, align 4
  store i32 48, i32* %7, align 4
  %11 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %12 = icmp ne %struct.pci_dn* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %16 = load i32, i32* @PCI_STATUS, align 4
  %17 = call i32 @pnv_pci_cfg_read(%struct.pci_dn* %15, i32 %16, i32 2, i32* %8)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PCI_STATUS_CAP_LIST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %59

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %52, %23
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pnv_pci_cfg_read(%struct.pci_dn* %29, i32 %30, i32 1, i32* %6)
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %58

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCI_CAP_LIST_ID, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @pnv_pci_cfg_read(%struct.pci_dn* %38, i32 %41, i32 1, i32* %9)
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %58

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %46
  %53 = load i64, i64* @PCI_CAP_LIST_NEXT, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  br label %24

58:                                               ; preds = %45, %34, %24
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %50, %22, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @pnv_pci_cfg_read(%struct.pci_dn*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
