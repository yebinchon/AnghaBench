; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c_cvmx_pcie_cfgx_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c_cvmx_pcie_cfgx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pescx_cfg_wr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%union.cvmx_pemx_cfg_wr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@OCTEON_FEATURE_NPEI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @cvmx_pcie_cfgx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_pcie_cfgx_write(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.cvmx_pescx_cfg_wr, align 8
  %8 = alloca %union.cvmx_pemx_cfg_wr, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @OCTEON_FEATURE_NPEI, align 4
  %10 = call i64 @octeon_has_feature(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = bitcast %union.cvmx_pescx_cfg_wr* %7 to i64*
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast %union.cvmx_pescx_cfg_wr* %7 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast %union.cvmx_pescx_cfg_wr* %7 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @CVMX_PESCX_CFG_WR(i32 %20)
  %22 = bitcast %union.cvmx_pescx_cfg_wr* %7 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @cvmx_write_csr(i32 %21, i64 %23)
  br label %38

25:                                               ; preds = %3
  %26 = bitcast %union.cvmx_pemx_cfg_wr* %8 to i64*
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast %union.cvmx_pemx_cfg_wr* %8 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast %union.cvmx_pemx_cfg_wr* %8 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CVMX_PEMX_CFG_WR(i32 %33)
  %35 = bitcast %union.cvmx_pemx_cfg_wr* %8 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @cvmx_write_csr(i32 %34, i64 %36)
  br label %38

38:                                               ; preds = %25, %12
  ret void
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_PESCX_CFG_WR(i32) #1

declare dso_local i32 @CVMX_PEMX_CFG_WR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
