; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_pbm_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_pbm_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SCHIZO_PCI_IRQ_RETRY = common dso_local global i64 0, align 8
@SCHIZO_PCI_CTRL = common dso_local global i64 0, align 8
@PBM_CHIP_TYPE_TOMATILLO = common dso_local global i64 0, align 8
@SCHIZO_PCICTRL_PTO_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no-bus-parking\00", align 1
@SCHIZO_PCICTRL_PARK = common dso_local global i32 0, align 4
@SCHIZO_PCICTRL_DTO_INT = common dso_local global i32 0, align 4
@SCHIZO_PCICTRL_MRM_PREF = common dso_local global i32 0, align 4
@SCHIZO_PCICTRL_RDO_PREF = common dso_local global i32 0, align 4
@SCHIZO_PCICTRL_RDL_PREF = common dso_local global i32 0, align 4
@SCHIZO_PCI_DIAG = common dso_local global i64 0, align 8
@SCHIZO_PCIDIAG_D_RTRYARB = common dso_local global i32 0, align 4
@SCHIZO_PCIDIAG_D_RETRY = common dso_local global i32 0, align 4
@SCHIZO_PCIDIAG_D_INTSYNC = common dso_local global i32 0, align 4
@TOMATILLO_IOC_PART_WPENAB = common dso_local global i32 0, align 4
@TOMATILLO_IOC_PREF_OFF_SHIFT = common dso_local global i32 0, align 4
@TOMATILLO_IOC_RDMULT_CPENAB = common dso_local global i32 0, align 4
@TOMATILLO_IOC_RDONE_CPENAB = common dso_local global i32 0, align 4
@TOMATILLO_IOC_RDLINE_CPENAB = common dso_local global i32 0, align 4
@TOMATILLO_PCI_IOC_CSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*)* @schizo_pbm_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schizo_pbm_hw_init(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  %4 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %5 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SCHIZO_PCI_IRQ_RETRY, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @upa_writeq(i32 5, i64 %8)
  %10 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %11 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SCHIZO_PCI_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @upa_readq(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, 255
  store i32 %17, i32* %3, align 4
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %19 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PBM_CHIP_TYPE_TOMATILLO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %25 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* @SCHIZO_PCICTRL_PTO_SHIFT, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 3, %30
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = or i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %23, %1
  %37 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %38 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @of_find_property(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @SCHIZO_PCICTRL_PARK, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %36
  %50 = load i32, i32* @SCHIZO_PCICTRL_PARK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %56 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PBM_CHIP_TYPE_TOMATILLO, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %62 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @SCHIZO_PCICTRL_DTO_INT, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %60, %54
  %70 = load i32, i32* @SCHIZO_PCICTRL_DTO_INT, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %76 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PBM_CHIP_TYPE_TOMATILLO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32, i32* @SCHIZO_PCICTRL_MRM_PREF, align 4
  %82 = load i32, i32* @SCHIZO_PCICTRL_RDO_PREF, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SCHIZO_PCICTRL_RDL_PREF, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %74
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %91 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SCHIZO_PCI_CTRL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @upa_writeq(i32 %89, i64 %94)
  %96 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %97 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SCHIZO_PCI_DIAG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @upa_readq(i64 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* @SCHIZO_PCIDIAG_D_RTRYARB, align 4
  %103 = load i32, i32* @SCHIZO_PCIDIAG_D_RETRY, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @SCHIZO_PCIDIAG_D_INTSYNC, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %3, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %112 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SCHIZO_PCI_DIAG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @upa_writeq(i32 %110, i64 %115)
  %117 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %118 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PBM_CHIP_TYPE_TOMATILLO, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %88
  %123 = load i32, i32* @TOMATILLO_IOC_PART_WPENAB, align 4
  %124 = load i32, i32* @TOMATILLO_IOC_PREF_OFF_SHIFT, align 4
  %125 = shl i32 1, %124
  %126 = or i32 %123, %125
  %127 = load i32, i32* @TOMATILLO_IOC_RDMULT_CPENAB, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @TOMATILLO_IOC_RDONE_CPENAB, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @TOMATILLO_IOC_RDLINE_CPENAB, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %135 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TOMATILLO_PCI_IOC_CSR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @upa_writeq(i32 %133, i64 %138)
  br label %140

140:                                              ; preds = %122, %88
  ret void
}

declare dso_local i32 @upa_writeq(i32, i64) #1

declare dso_local i32 @upa_readq(i64) #1

declare dso_local i32 @of_find_property(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
