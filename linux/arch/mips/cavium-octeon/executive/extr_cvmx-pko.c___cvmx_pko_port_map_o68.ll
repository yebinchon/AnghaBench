; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c___cvmx_pko_port_map_o68.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c___cvmx_pko_port_map_o68.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_mem_iport_ptrs = type { i64, [24 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@CVMX_PKO_MEM_IPORT_PTRS = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_DISABLED = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_LOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__cvmx_pko_port_map_o68 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_pko_port_map_o68() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %union.cvmx_pko_mem_iport_ptrs, align 8
  %6 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to i64*
  store i64 0, i64* %6, align 8
  %7 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 31, i32* %8, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %20, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @CVMX_PKO_MEM_IPORT_PTRS, align 4
  %17 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @cvmx_write_csr(i32 %16, i64 %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %9

23:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %73, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 48
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @cvmx_helper_get_interface_num(i32 %28)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @cvmx_helper_get_interface_index_num(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @cvmx_helper_interface_get_mode(i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %73

38:                                               ; preds = %27
  %39 = load i32, i32* %1, align 4
  %40 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 255, i32* %43, align 8
  %44 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @__cvmx_pko_int(i32 %48, i32 %49)
  %51 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_LOOP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %38
  %62 = load i32, i32* %3, align 4
  br label %65

63:                                               ; preds = %38
  %64 = load i32, i32* %1, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @CVMX_PKO_MEM_IPORT_PTRS, align 4
  %70 = bitcast %union.cvmx_pko_mem_iport_ptrs* %5 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @cvmx_write_csr(i32 %69, i64 %71)
  br label %73

73:                                               ; preds = %65, %37
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %1, align 4
  br label %24

76:                                               ; preds = %24
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @__cvmx_pko_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
