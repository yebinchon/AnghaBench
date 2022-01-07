; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c_cvmx_pko_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c_cvmx_pko_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_mem_queue_ptrs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i32, i64 }
%union.cvmx_pko_reg_queue_ptrs1 = type { i64 }
%struct.TYPE_4__ = type { i32 }

@CVMX_PKO_MAX_OUTPUT_QUEUES = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@CVMX_PKO_REG_QUEUE_PTRS1 = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_QUEUE_PTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_pko_shutdown() #0 {
  %1 = alloca %union.cvmx_pko_mem_queue_ptrs, align 8
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_pko_reg_queue_ptrs1, align 8
  %4 = call i32 (...) @cvmx_pko_disable()
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %47, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @CVMX_PKO_MAX_OUTPUT_QUEUES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = bitcast %union.cvmx_pko_mem_queue_ptrs* %1 to i64*
  store i64 0, i64* %10, align 8
  %11 = bitcast %union.cvmx_pko_mem_queue_ptrs* %1 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = bitcast %union.cvmx_pko_mem_queue_ptrs* %1 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, align 4
  %16 = bitcast %union.cvmx_pko_mem_queue_ptrs* %1 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 127
  %20 = bitcast %union.cvmx_pko_mem_queue_ptrs* %1 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = bitcast %union.cvmx_pko_mem_queue_ptrs* %1 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = bitcast %union.cvmx_pko_mem_queue_ptrs* %1 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @OCTEON_CN3XXX, align 4
  %27 = call i32 @OCTEON_IS_MODEL(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %9
  %30 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %3 to i64*
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 7
  %33 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %3 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @CVMX_PKO_REG_QUEUE_PTRS1, align 4
  %36 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %3 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @cvmx_write_csr(i32 %35, i64 %37)
  br label %39

39:                                               ; preds = %29, %9
  %40 = load i32, i32* @CVMX_PKO_MEM_QUEUE_PTRS, align 4
  %41 = bitcast %union.cvmx_pko_mem_queue_ptrs* %1 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @cvmx_write_csr(i32 %40, i64 %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @CVMX_CMD_QUEUE_PKO(i32 %44)
  %46 = call i32 @cvmx_cmd_queue_shutdown(i32 %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %5

50:                                               ; preds = %5
  %51 = call i32 (...) @__cvmx_pko_reset()
  ret void
}

declare dso_local i32 @cvmx_pko_disable(...) #1

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @cvmx_cmd_queue_shutdown(i32) #1

declare dso_local i32 @CVMX_CMD_QUEUE_PKO(i32) #1

declare dso_local i32 @__cvmx_pko_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
