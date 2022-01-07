; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-util.c_cvmx_helper_setup_red_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-util.c_cvmx_helper_setup_red_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ipd_qosx_red_marks = type { i64 }
%union.cvmx_ipd_red_quex_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cvmx_helper_setup_red_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_helper_setup_red_queue(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_ipd_qosx_red_marks, align 8
  %8 = alloca %union.cvmx_ipd_red_quex_param, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = bitcast %union.cvmx_ipd_qosx_red_marks* %7 to i64*
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = bitcast %union.cvmx_ipd_qosx_red_marks* %7 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = bitcast %union.cvmx_ipd_qosx_red_marks* %7 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @CVMX_IPD_QOSX_RED_MARKS(i32 %16)
  %18 = bitcast %union.cvmx_ipd_qosx_red_marks* %7 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @cvmx_write_csr(i32 %17, i64 %19)
  %21 = bitcast %union.cvmx_ipd_red_quex_param* %8 to i64*
  store i64 0, i64* %21, align 8
  %22 = bitcast %union.cvmx_ipd_qosx_red_marks* %7 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = bitcast %union.cvmx_ipd_qosx_red_marks* %7 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = udiv i64 4278190080, %29
  %31 = bitcast %union.cvmx_ipd_red_quex_param* %8 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = bitcast %union.cvmx_ipd_red_quex_param* %8 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = bitcast %union.cvmx_ipd_red_quex_param* %8 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 255, i32* %36, align 4
  %37 = bitcast %union.cvmx_ipd_red_quex_param* %8 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @CVMX_IPD_RED_QUEX_PARAM(i32 %39)
  %41 = bitcast %union.cvmx_ipd_red_quex_param* %8 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @cvmx_write_csr(i32 %40, i64 %42)
  ret i32 0
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_IPD_QOSX_RED_MARKS(i32) #1

declare dso_local i32 @CVMX_IPD_RED_QUEX_PARAM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
