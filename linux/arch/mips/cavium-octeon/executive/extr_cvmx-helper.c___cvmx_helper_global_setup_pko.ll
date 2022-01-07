; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_helper_global_setup_pko.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_helper_global_setup_pko.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_iob_fau_timeout = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%union.cvmx_pko_reg_min_pkt = type { i64, [24 x i8] }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CVMX_IOB_FAU_TIMEOUT = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@CVMX_PKO_REG_MIN_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__cvmx_helper_global_setup_pko to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_global_setup_pko() #0 {
  %1 = alloca %union.cvmx_iob_fau_timeout, align 8
  %2 = alloca %union.cvmx_pko_reg_min_pkt, align 8
  %3 = bitcast %union.cvmx_iob_fau_timeout* %1 to i64*
  store i64 0, i64* %3, align 8
  %4 = bitcast %union.cvmx_iob_fau_timeout* %1 to %struct.TYPE_3__*
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 4095, i32* %5, align 8
  %6 = bitcast %union.cvmx_iob_fau_timeout* %1 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @CVMX_IOB_FAU_TIMEOUT, align 4
  %9 = bitcast %union.cvmx_iob_fau_timeout* %1 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @cvmx_write_csr(i32 %8, i64 %10)
  %12 = load i32, i32* @OCTEON_CN68XX, align 4
  %13 = call i64 @OCTEON_IS_MODEL(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %0
  %16 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to i64*
  store i64 0, i64* %16, align 8
  %17 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 59, i32* %18, align 8
  %19 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 59, i32* %20, align 4
  %21 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 59, i32* %22, align 8
  %23 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 59, i32* %24, align 4
  %25 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  store i32 59, i32* %26, align 8
  %27 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store i32 59, i32* %28, align 4
  %29 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i32 59, i32* %30, align 8
  %31 = load i32, i32* @CVMX_PKO_REG_MIN_PKT, align 4
  %32 = bitcast %union.cvmx_pko_reg_min_pkt* %2 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @cvmx_write_csr(i32 %31, i64 %33)
  br label %35

35:                                               ; preds = %15, %0
  ret i32 0
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
