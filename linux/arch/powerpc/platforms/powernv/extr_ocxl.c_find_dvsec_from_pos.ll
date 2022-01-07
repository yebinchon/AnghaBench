; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_find_dvsec_from_pos.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_find_dvsec_from_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@OCXL_EXT_CAP_ID_DVSEC = common dso_local global i32 0, align 4
@OCXL_DVSEC_VENDOR_OFFSET = common dso_local global i64 0, align 8
@OCXL_DVSEC_ID_OFFSET = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_IBM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @find_dvsec_from_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dvsec_from_pos(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %41, %3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @OCXL_EXT_CAP_ID_DVSEC, align 4
  %16 = call i32 @pci_find_next_ext_capability(%struct.pci_dev* %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @OCXL_DVSEC_VENDOR_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i64 %23, i64* %9)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @OCXL_DVSEC_ID_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i64 %29, i64* %10)
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @PCI_VENDOR_ID_IBM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %18
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %34, %18
  br label %12

42:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @pci_find_next_ext_capability(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
