; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_link_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_link_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pemx_ctl_status = type { i32 }
%union.cvmx_pciercx_cfg032 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%union.cvmx_pciercx_cfg448 = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_pcie_rc_initialize_link_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_pcie_rc_initialize_link_gen2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %union.cvmx_pemx_ctl_status, align 4
  %6 = alloca %union.cvmx_pciercx_cfg032, align 8
  %7 = alloca %union.cvmx_pciercx_cfg448, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @CVMX_PEMX_CTL_STATUS(i32 %8)
  %10 = call i32 @cvmx_read_csr(i32 %9)
  %11 = bitcast %union.cvmx_pemx_ctl_status* %5 to i32*
  store i32 %10, i32* %11, align 4
  %12 = bitcast %union.cvmx_pemx_ctl_status* %5 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @CVMX_PEMX_CTL_STATUS(i32 %14)
  %16 = bitcast %union.cvmx_pemx_ctl_status* %5 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cvmx_write_csr(i32 %15, i32 %17)
  %19 = call i64 (...) @cvmx_get_cycle()
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %44, %1
  %21 = call i64 (...) @cvmx_get_cycle()
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i64 (...) @octeon_get_clock_rate()
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %74

27:                                               ; preds = %20
  %28 = call i32 @__delay(i32 10000)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CVMX_PCIERCX_CFG032(i32 %30)
  %32 = call i8* @cvmx_pcie_cfgx_read(i32 %29, i32 %31)
  %33 = bitcast %union.cvmx_pciercx_cfg032* %6 to i8**
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = bitcast %union.cvmx_pciercx_cfg032* %6 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = bitcast %union.cvmx_pciercx_cfg032* %6 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ true, %34 ], [ %43, %39 ]
  br i1 %45, label %20, label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @CVMX_PCIERCX_CFG448(i32 %48)
  %50 = call i8* @cvmx_pcie_cfgx_read(i32 %47, i32 %49)
  %51 = bitcast %union.cvmx_pciercx_cfg448* %7 to i8**
  store i8* %50, i8** %51, align 8
  %52 = bitcast %union.cvmx_pciercx_cfg032* %6 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %67 [
    i32 1, label %55
    i32 2, label %58
    i32 4, label %61
    i32 8, label %64
  ]

55:                                               ; preds = %46
  %56 = bitcast %union.cvmx_pciercx_cfg448* %7 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 1677, i32* %57, align 8
  br label %67

58:                                               ; preds = %46
  %59 = bitcast %union.cvmx_pciercx_cfg448* %7 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 867, i32* %60, align 8
  br label %67

61:                                               ; preds = %46
  %62 = bitcast %union.cvmx_pciercx_cfg448* %7 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 462, i32* %63, align 8
  br label %67

64:                                               ; preds = %46
  %65 = bitcast %union.cvmx_pciercx_cfg448* %7 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 258, i32* %66, align 8
  br label %67

67:                                               ; preds = %46, %64, %61, %58, %55
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @CVMX_PCIERCX_CFG448(i32 %69)
  %71 = bitcast %union.cvmx_pciercx_cfg448* %7 to i8**
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @cvmx_pcie_cfgx_write(i32 %68, i32 %70, i8* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %26
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PEMX_CTL_STATUS(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i64 @cvmx_get_cycle(...) #1

declare dso_local i64 @octeon_get_clock_rate(...) #1

declare dso_local i32 @__delay(i32) #1

declare dso_local i8* @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG032(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG448(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
