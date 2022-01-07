; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-xaui.c___cvmx_helper_xaui_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_inf_mode = type { i64 }
%union.cvmx_pko_mem_port_ptrs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@CVMX_PKO_MEM_PORT_PTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_xaui_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_gmxx_inf_mode, align 8
  %5 = alloca %union.cvmx_pko_mem_port_ptrs, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @CVMX_GMXX_INF_MODE(i32 %6)
  %8 = call i64 @cvmx_read_csr(i32 %7)
  %9 = bitcast %union.cvmx_gmxx_inf_mode* %4 to i64*
  store i64 %8, i64* %9, align 8
  %10 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @CVMX_GMXX_INF_MODE(i32 %12)
  %14 = bitcast %union.cvmx_gmxx_inf_mode* %4 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @cvmx_write_csr(i32 %13, i64 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @__cvmx_helper_setup_gmx(i32 %17, i32 1)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %42, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = bitcast %union.cvmx_pko_mem_port_ptrs* %5 to i64*
  store i64 0, i64* %23, align 8
  %24 = bitcast %union.cvmx_pko_mem_port_ptrs* %5 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = bitcast %union.cvmx_pko_mem_port_ptrs* %5 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 255, i32* %27, align 8
  %28 = load i32, i32* %2, align 4
  %29 = mul nsw i32 %28, 4
  %30 = bitcast %union.cvmx_pko_mem_port_ptrs* %5 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %2, align 4
  %33 = mul nsw i32 %32, 16
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %33, %34
  %36 = bitcast %union.cvmx_pko_mem_port_ptrs* %5 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @CVMX_PKO_MEM_PORT_PTRS, align 4
  %39 = bitcast %union.cvmx_pko_mem_port_ptrs* %5 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @cvmx_write_csr(i32 %38, i64 %40)
  br label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @__cvmx_helper_xaui_enumerate(i32 %46)
  ret i32 %47
}

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @__cvmx_helper_setup_gmx(i32, i32) #1

declare dso_local i32 @__cvmx_helper_xaui_enumerate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
