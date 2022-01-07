; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_config_link_msix.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_config_link_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIE_9XX_INT_EN0 = common dso_local global i32 0, align 4
@PCIE_INT_EN0 = common dso_local global i32 0, align 4
@PCIE_9XX_BRIDGE_MSIX_ADDR_BASE = common dso_local global i32 0, align 4
@PCIE_9XX_BRIDGE_MSIX_ADDR_LIMIT = common dso_local global i32 0, align 4
@MSI_ADDR_SZ = common dso_local global i32 0, align 4
@PCIE_BRIDGE_MSIX_ADDR_BASE = common dso_local global i32 0, align 4
@PCIE_BRIDGE_MSIX_ADDR_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @xlp_config_link_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_config_link_msix(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @nlm_read_reg(i32 %8, i32 44)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, -2147483648
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, -2147483648
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @nlm_write_reg(i32 %16, i32 44, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = call i64 (...) @cpu_is_xlp9xx()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PCIE_9XX_INT_EN0, align 4
  %25 = call i32 @nlm_read_reg(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 512
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PCIE_9XX_INT_EN0, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @nlm_write_reg(i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %22
  br label %52

37:                                               ; preds = %19
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PCIE_INT_EN0, align 4
  %40 = call i32 @nlm_read_reg(i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 512
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, 512
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PCIE_INT_EN0, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @nlm_write_reg(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %37
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @nlm_read_reg(i32 %53, i32 1)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 1024
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, 1024
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @nlm_write_reg(i32 %61, i32 1, i32 %62)
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @nlm_read_pci_reg(i32 %65, i32 15)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, -32
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 256, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @nlm_write_pci_reg(i32 %73, i32 15, i32 %74)
  %76 = call i64 (...) @cpu_is_xlp9xx()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %64
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @PCIE_9XX_BRIDGE_MSIX_ADDR_BASE, align 4
  %81 = load i32, i32* %6, align 4
  %82 = ashr i32 %81, 8
  %83 = call i32 @nlm_write_reg(i32 %79, i32 %80, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @PCIE_9XX_BRIDGE_MSIX_ADDR_LIMIT, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MSI_ADDR_SZ, align 4
  %88 = add nsw i32 %86, %87
  %89 = ashr i32 %88, 8
  %90 = call i32 @nlm_write_reg(i32 %84, i32 %85, i32 %89)
  br label %104

91:                                               ; preds = %64
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @PCIE_BRIDGE_MSIX_ADDR_BASE, align 4
  %94 = load i32, i32* %6, align 4
  %95 = ashr i32 %94, 8
  %96 = call i32 @nlm_write_reg(i32 %92, i32 %93, i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @PCIE_BRIDGE_MSIX_ADDR_LIMIT, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @MSI_ADDR_SZ, align 4
  %101 = add nsw i32 %99, %100
  %102 = ashr i32 %101, 8
  %103 = call i32 @nlm_write_reg(i32 %97, i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %91, %78
  ret void
}

declare dso_local i32 @nlm_read_reg(i32, i32) #1

declare dso_local i32 @nlm_write_reg(i32, i32, i32) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @nlm_read_pci_reg(i32, i32) #1

declare dso_local i32 @nlm_write_pci_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
