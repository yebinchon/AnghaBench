; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_link_gen1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_link_gen1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pescx_ctl_status = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%union.cvmx_pciercx_cfg452 = type { i8* }
%union.cvmx_pciercx_cfg032 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%union.cvmx_pciercx_cfg448 = type { i8* }
%union.cvmx_pciercx_cfg455 = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@OCTEON_CN52XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX_PASS1_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PCIe: Port %d link timeout\0A\00", align 1
@CVMX_PEXP_NPEI_INT_SUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_pcie_rc_initialize_link_gen1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_pcie_rc_initialize_link_gen1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_pescx_ctl_status, align 8
  %6 = alloca %union.cvmx_pciercx_cfg452, align 8
  %7 = alloca %union.cvmx_pciercx_cfg032, align 8
  %8 = alloca %union.cvmx_pciercx_cfg448, align 8
  %9 = alloca %union.cvmx_pciercx_cfg455, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CVMX_PCIERCX_CFG452(i32 %11)
  %13 = call i8* @cvmx_pcie_cfgx_read(i32 %10, i32 %12)
  %14 = bitcast %union.cvmx_pciercx_cfg452* %6 to i8**
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %15)
  %17 = call i8* @cvmx_read_csr(i32 %16)
  %18 = bitcast %union.cvmx_pescx_ctl_status* %5 to i8**
  store i8* %17, i8** %18, align 8
  %19 = bitcast %union.cvmx_pescx_ctl_status* %5 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = bitcast %union.cvmx_pciercx_cfg452* %6 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 15, i32* %25, align 8
  br label %29

26:                                               ; preds = %1
  %27 = bitcast %union.cvmx_pciercx_cfg452* %6 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 7, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @CVMX_PCIERCX_CFG452(i32 %31)
  %33 = bitcast %union.cvmx_pciercx_cfg452* %6 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @cvmx_pcie_cfgx_write(i32 %30, i32 %32, i8* %34)
  %36 = load i32, i32* @OCTEON_CN52XX_PASS1_X, align 4
  %37 = call i64 @OCTEON_IS_MODEL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @CVMX_PCIERCX_CFG455(i32 %41)
  %43 = call i8* @cvmx_pcie_cfgx_read(i32 %40, i32 %42)
  %44 = bitcast %union.cvmx_pciercx_cfg455* %9 to i8**
  store i8* %43, i8** %44, align 8
  %45 = bitcast %union.cvmx_pciercx_cfg455* %9 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @CVMX_PCIERCX_CFG455(i32 %48)
  %50 = bitcast %union.cvmx_pciercx_cfg455* %9 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @cvmx_pcie_cfgx_write(i32 %47, i32 %49, i8* %51)
  br label %53

53:                                               ; preds = %39, %29
  %54 = load i32, i32* @OCTEON_CN52XX, align 4
  %55 = call i64 @OCTEON_IS_MODEL(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = bitcast %union.cvmx_pescx_ctl_status* %5 to %struct.TYPE_8__*
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %63)
  %65 = bitcast %union.cvmx_pescx_ctl_status* %5 to i8**
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @cvmx_write_csr(i32 %64, i8* %66)
  br label %68

68:                                               ; preds = %60, %57, %53
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %69)
  %71 = call i8* @cvmx_read_csr(i32 %70)
  %72 = bitcast %union.cvmx_pescx_ctl_status* %5 to i8**
  store i8* %71, i8** %72, align 8
  %73 = bitcast %union.cvmx_pescx_ctl_status* %5 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @CVMX_PESCX_CTL_STATUS(i32 %75)
  %77 = bitcast %union.cvmx_pescx_ctl_status* %5 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @cvmx_write_csr(i32 %76, i8* %78)
  %80 = load i32, i32* @OCTEON_CN52XX_PASS1_0, align 4
  %81 = call i64 @OCTEON_IS_MODEL(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = call i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32 0)
  br label %85

85:                                               ; preds = %83, %68
  %86 = call i32 (...) @cvmx_get_cycle()
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %104, %85
  %88 = call i32 (...) @cvmx_get_cycle()
  %89 = load i32, i32* %4, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 (...) @octeon_get_clock_rate()
  %92 = mul nsw i32 2, %91
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i32 -1, i32* %2, align 4
  br label %141

97:                                               ; preds = %87
  %98 = call i32 @__delay(i32 10000)
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @CVMX_PCIERCX_CFG032(i32 %100)
  %102 = call i8* @cvmx_pcie_cfgx_read(i32 %99, i32 %101)
  %103 = bitcast %union.cvmx_pciercx_cfg032* %7 to i8**
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %97
  %105 = bitcast %union.cvmx_pciercx_cfg032* %7 to %struct.TYPE_9__*
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %87, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @CVMX_PEXP_NPEI_INT_SUM, align 4
  %111 = load i32, i32* @CVMX_PEXP_NPEI_INT_SUM, align 4
  %112 = call i8* @cvmx_read_csr(i32 %111)
  %113 = call i32 @cvmx_write_csr(i32 %110, i8* %112)
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @CVMX_PCIERCX_CFG448(i32 %115)
  %117 = call i8* @cvmx_pcie_cfgx_read(i32 %114, i32 %116)
  %118 = bitcast %union.cvmx_pciercx_cfg448* %8 to i8**
  store i8* %117, i8** %118, align 8
  %119 = bitcast %union.cvmx_pciercx_cfg032* %7 to %struct.TYPE_9__*
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %134 [
    i32 1, label %122
    i32 2, label %125
    i32 4, label %128
    i32 8, label %131
  ]

122:                                              ; preds = %109
  %123 = bitcast %union.cvmx_pciercx_cfg448* %8 to %struct.TYPE_10__*
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 1677, i32* %124, align 8
  br label %134

125:                                              ; preds = %109
  %126 = bitcast %union.cvmx_pciercx_cfg448* %8 to %struct.TYPE_10__*
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i32 867, i32* %127, align 8
  br label %134

128:                                              ; preds = %109
  %129 = bitcast %union.cvmx_pciercx_cfg448* %8 to %struct.TYPE_10__*
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i32 462, i32* %130, align 8
  br label %134

131:                                              ; preds = %109
  %132 = bitcast %union.cvmx_pciercx_cfg448* %8 to %struct.TYPE_10__*
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 258, i32* %133, align 8
  br label %134

134:                                              ; preds = %109, %131, %128, %125, %122
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @CVMX_PCIERCX_CFG448(i32 %136)
  %138 = bitcast %union.cvmx_pciercx_cfg448* %8 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @cvmx_pcie_cfgx_write(i32 %135, i32 %137, i8* %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %134, %94
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i8* @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG452(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PESCX_CTL_STATUS(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i8*) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG455(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @__cvmx_helper_errata_qlm_disable_2nd_order_cdr(i32) #1

declare dso_local i32 @cvmx_get_cycle(...) #1

declare dso_local i32 @octeon_get_clock_rate(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @__delay(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG032(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG448(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
