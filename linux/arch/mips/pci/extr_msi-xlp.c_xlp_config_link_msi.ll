; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_config_link_msi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-xlp.c_xlp_config_link_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIE_9XX_INT_EN0 = common dso_local global i32 0, align 4
@PCIE_INT_EN0 = common dso_local global i32 0, align 4
@PCIE_BRIDGE_MSI_ADDRH = common dso_local global i32 0, align 4
@PCIE_BRIDGE_MSI_ADDRL = common dso_local global i32 0, align 4
@PCIE_BRIDGE_MSI_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @xlp_config_link_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_config_link_msi(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i64 (...) @cpu_is_xlp9xx()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PCIE_9XX_INT_EN0, align 4
  %13 = call i32 @nlm_read_reg(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, 512
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PCIE_9XX_INT_EN0, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @nlm_write_reg(i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %10
  br label %40

25:                                               ; preds = %3
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PCIE_INT_EN0, align 4
  %28 = call i32 @nlm_read_reg(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, 512
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PCIE_INT_EN0, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @nlm_write_reg(i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @nlm_read_reg(i32 %41, i32 1)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 1024
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 1024
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @nlm_write_reg(i32 %49, i32 1, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @nlm_read_pci_reg(i32 %53, i32 15)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, -32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 256, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @nlm_write_pci_reg(i32 %61, i32 15, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @PCIE_BRIDGE_MSI_ADDRH, align 4
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 32
  %68 = call i32 @nlm_write_reg(i32 %64, i32 %65, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PCIE_BRIDGE_MSI_ADDRL, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @nlm_write_reg(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @PCIE_BRIDGE_MSI_CAP, align 4
  %75 = call i32 @nlm_read_reg(i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 65536
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %52
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, 720896
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @PCIE_BRIDGE_MSI_CAP, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @nlm_write_reg(i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %52
  ret void
}

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @nlm_read_reg(i32, i32) #1

declare dso_local i32 @nlm_write_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_read_pci_reg(i32, i32) #1

declare dso_local i32 @nlm_write_pci_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
