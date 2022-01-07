; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-octeon.c_arch_setup_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-octeon.c_arch_setup_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.msi_desc = type { i32 }
%struct.msi_msg = type { i32, i32, i64 }

@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_QSIZE = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_QMASK = common dso_local global i32 0, align 4
@msi_free_irq_bitmask_lock = common dso_local global i32 0, align 4
@msi_irq_size = common dso_local global i32 0, align 4
@msi_free_irq_bitmask = common dso_local global i32* null, align 8
@msi_multiple_irq_bitmask = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [71 x i8] c"arch_setup_msi_irq: Unable to find %d free interrupts, trying just one\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"arch_setup_msi_irq: Unable to find a free MSI interrupt\00", align 1
@OCTEON_IRQ_MSI_BIT0 = common dso_local global i64 0, align 8
@octeon_dma_bar_type = common dso_local global i32 0, align 4
@CVMX_PCI_MSI_RCV = common dso_local global i32 0, align 4
@CVMX_NPEI_PCIE_MSI_RCV = common dso_local global i32 0, align 4
@CVMX_SLI_PCIE_MSI_RCV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"arch_setup_msi_irq: Invalid octeon_dma_bar_type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_msi_irq(%struct.pci_dev* %0, %struct.msi_desc* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.msi_desc*, align 8
  %5 = alloca %struct.msi_msg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.msi_desc* %1, %struct.msi_desc** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @pci_read_config_word(%struct.pci_dev* %13, i64 %18, i32* %6)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PCI_MSI_FLAGS_QSIZE, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PCI_MSI_FLAGS_QMASK, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %102, %37
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = call i32 @spin_lock(i32* @msi_free_irq_bitmask_lock)
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %91, %38
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @msi_irq_size, align 4
  %48 = sdiv i32 %47, 64
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 64
  br i1 %53, label %54, label %90

54:                                               ; preds = %51
  %55 = load i32*, i32** @msi_free_irq_bitmask, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %66, %67
  %69 = load i32*, i32** @msi_free_irq_bitmask, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %11, align 4
  %76 = ashr i32 %75, 1
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %76, %77
  %79 = load i32*, i32** @msi_multiple_irq_bitmask, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 4
  br label %95

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %51

90:                                               ; preds = %51
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %45

94:                                               ; preds = %45
  br label %95

95:                                               ; preds = %94, %65
  %96 = call i32 @spin_unlock(i32* @msi_free_irq_bitmask_lock)
  %97 = load i32, i32* %9, align 4
  %98 = icmp sge i32 %97, 64
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 1, %103
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %104)
  store i32 0, i32* %8, align 4
  br label %38

106:                                              ; preds = %99
  %107 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %95
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %110, 64
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i64, i64* @OCTEON_IRQ_MSI_BIT0, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @octeon_dma_bar_type, align 4
  switch i32 %119, label %157 [
    i32 128, label %120
    i32 131, label %133
    i32 130, label %141
    i32 129, label %149
  ]

120:                                              ; preds = %109
  %121 = load i32, i32* @CVMX_PCI_MSI_RCV, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 134217728, %122
  %124 = and i64 %123, 4294967295
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 0
  store i32 %125, i32* %126, align 8
  %127 = load i32, i32* @CVMX_PCI_MSI_RCV, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 134217728, %128
  %130 = lshr i64 %129, 32
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  br label %159

133:                                              ; preds = %109
  %134 = load i32, i32* @CVMX_PCI_MSI_RCV, align 4
  %135 = add nsw i32 0, %134
  %136 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 0
  store i32 %135, i32* %136, align 8
  %137 = load i32, i32* @CVMX_PCI_MSI_RCV, align 4
  %138 = add nsw i32 0, %137
  %139 = ashr i32 %138, 32
  %140 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 1
  store i32 %139, i32* %140, align 4
  br label %159

141:                                              ; preds = %109
  %142 = load i32, i32* @CVMX_NPEI_PCIE_MSI_RCV, align 4
  %143 = add nsw i32 0, %142
  %144 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = load i32, i32* @CVMX_NPEI_PCIE_MSI_RCV, align 4
  %146 = add nsw i32 0, %145
  %147 = ashr i32 %146, 32
  %148 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  br label %159

149:                                              ; preds = %109
  %150 = load i32, i32* @CVMX_SLI_PCIE_MSI_RCV, align 4
  %151 = add nsw i32 0, %150
  %152 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 0
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* @CVMX_SLI_PCIE_MSI_RCV, align 4
  %154 = add nsw i32 0, %153
  %155 = ashr i32 %154, 32
  %156 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  br label %159

157:                                              ; preds = %109
  %158 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %149, %141, %133, %120
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* @OCTEON_IRQ_MSI_BIT0, align 8
  %163 = sub nsw i64 %161, %162
  %164 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %5, i32 0, i32 2
  store i64 %163, i64* %164, align 8
  %165 = load i32, i32* @PCI_MSI_FLAGS_QSIZE, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %6, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %8, align 4
  %170 = shl i32 %169, 4
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  %173 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %174 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %178 = add nsw i64 %176, %177
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @pci_write_config_word(%struct.pci_dev* %173, i64 %178, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.msi_desc*, %struct.msi_desc** %4, align 8
  %183 = call i32 @irq_set_msi_desc(i32 %181, %struct.msi_desc* %182)
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @pci_write_msi_msg(i32 %184, %struct.msi_msg* %5)
  ret i32 0
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @irq_set_msi_desc(i32, %struct.msi_desc*) #1

declare dso_local i32 @pci_write_msi_msg(i32, %struct.msi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
