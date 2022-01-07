; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c_cvmx_pko_initialize_global.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c_cvmx_pko_initialize_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_reg_cmd_buf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CVMX_FPA_OUTPUT_BUFFER_POOL = common dso_local global i32 0, align 4
@CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE = common dso_local global i32 0, align 4
@CVMX_PKO_REG_CMD_BUF = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@CVMX_PKO_REG_QUEUE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_pko_initialize_global() #0 {
  %1 = alloca %union.cvmx_pko_reg_cmd_buf, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast %union.cvmx_pko_reg_cmd_buf* %1 to i32*
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @CVMX_FPA_OUTPUT_BUFFER_POOL, align 4
  %7 = bitcast %union.cvmx_pko_reg_cmd_buf* %1 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, align 4
  %10 = sdiv i32 %9, 8
  %11 = sub nsw i32 %10, 1
  %12 = bitcast %union.cvmx_pko_reg_cmd_buf* %1 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @CVMX_PKO_REG_CMD_BUF, align 4
  %15 = bitcast %union.cvmx_pko_reg_cmd_buf* %1 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cvmx_write_csr(i32 %14, i32 %16)
  %18 = call i32 (...) @__cvmx_pko_chip_init()
  %19 = load i32, i32* @OCTEON_CN38XX, align 4
  %20 = call i64 @OCTEON_IS_MODEL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* @OCTEON_CN58XX, align 4
  %24 = call i64 @OCTEON_IS_MODEL(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @OCTEON_CN56XX, align 4
  %28 = call i64 @OCTEON_IS_MODEL(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @OCTEON_CN52XX, align 4
  %32 = call i64 @OCTEON_IS_MODEL(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %30, %26, %22, %0
  %35 = call i32 (...) @cvmx_helper_get_number_of_interfaces()
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @cvmx_helper_get_last_ipd_port(i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @cvmx_pko_get_base_queue(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @cvmx_pko_get_num_queues(i32 %41)
  %43 = add nsw i32 %40, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @OCTEON_CN38XX, align 4
  %45 = call i64 @OCTEON_IS_MODEL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = load i32, i32* %4, align 4
  %49 = icmp sle i32 %48, 32
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @CVMX_PKO_REG_QUEUE_MODE, align 4
  %52 = call i32 @cvmx_write_csr(i32 %51, i32 2)
  br label %60

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 64
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @CVMX_PKO_REG_QUEUE_MODE, align 4
  %58 = call i32 @cvmx_write_csr(i32 %57, i32 1)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %50
  br label %75

61:                                               ; preds = %34
  %62 = load i32, i32* %4, align 4
  %63 = icmp sle i32 %62, 64
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @CVMX_PKO_REG_QUEUE_MODE, align 4
  %66 = call i32 @cvmx_write_csr(i32 %65, i32 2)
  br label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = icmp sle i32 %68, 128
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @CVMX_PKO_REG_QUEUE_MODE, align 4
  %72 = call i32 @cvmx_write_csr(i32 %71, i32 1)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %64
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75, %30
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @__cvmx_pko_chip_init(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_helper_get_number_of_interfaces(...) #1

declare dso_local i32 @cvmx_helper_get_last_ipd_port(i32) #1

declare dso_local i32 @cvmx_pko_get_base_queue(i32) #1

declare dso_local i32 @cvmx_pko_get_num_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
