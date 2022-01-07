; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_setup.c_octeon_user_io_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_setup.c_octeon_user_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.octeon_cvmemctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.cvmx_iob_fau_timeout = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%union.cvmx_pow_nw_tim = type { i64 }
%struct.TYPE_6__ = type { i32 }

@OCTEON_CN38XX_PASS2 = common dso_local global i32 0, align 4
@OCTEON_CN63XX_PASS1_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CVMSEG size: %d cache lines (%d bytes)\0A\00", align 1
@CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE = common dso_local global i32 0, align 4
@OCTEON_FEATURE_FAU = common dso_local global i32 0, align 4
@CVMX_IOB_FAU_TIMEOUT = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@OCTEON_CN7XXX = common dso_local global i32 0, align 4
@OCTEON_CN70XX = common dso_local global i32 0, align 4
@CVMX_POW_NW_TIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_user_io_init() #0 {
  %1 = alloca %union.octeon_cvmemctl, align 8
  %2 = alloca %union.cvmx_iob_fau_timeout, align 8
  %3 = alloca %union.cvmx_pow_nw_tim, align 8
  %4 = call i32 (...) @read_c0_cvmmemctl()
  %5 = bitcast %union.octeon_cvmemctl* %1 to i32*
  store i32 %4, i32* %5, align 8
  %6 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 20
  store i64 0, i64* %9, align 8
  %10 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 19
  store i64 0, i64* %11, align 8
  %12 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 18
  store i64 0, i64* %13, align 8
  %14 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 17
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @OCTEON_CN38XX_PASS2, align 4
  %17 = call i64 @OCTEON_IS_MODEL(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  br label %25

22:                                               ; preds = %0
  %23 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 16
  store i64 0, i64* %27, align 8
  %28 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 15
  store i64 0, i64* %29, align 8
  %30 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 14
  store i64 0, i64* %31, align 8
  %32 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 13
  store i64 0, i64* %33, align 8
  %34 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 11
  store i64 0, i64* %37, align 8
  %38 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 10
  store i64 0, i64* %39, align 8
  %40 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 9
  store i64 0, i64* %41, align 8
  %42 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @OCTEON_CN63XX_PASS1_X, align 4
  %49 = call i64 @OCTEON_IS_MODEL(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %25
  %52 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 4, i32* %53, align 8
  br label %57

54:                                               ; preds = %25
  %55 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 10, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = bitcast %union.octeon_cvmemctl* %1 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = bitcast %union.octeon_cvmemctl* %1 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @write_c0_cvmmemctl(i32 %65)
  %67 = call i64 (...) @smp_processor_id()
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %57
  %70 = load i32, i32* @CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE, align 4
  %71 = load i32, i32* @CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE, align 4
  %72 = mul nsw i32 %71, 128
  %73 = call i32 @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %69, %57
  %75 = load i32, i32* @OCTEON_FEATURE_FAU, align 4
  %76 = call i64 @octeon_has_feature(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = bitcast %union.cvmx_iob_fau_timeout* %2 to i64*
  store i64 0, i64* %79, align 8
  %80 = bitcast %union.cvmx_iob_fau_timeout* %2 to %struct.TYPE_5__*
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 4095, i32* %81, align 8
  %82 = bitcast %union.cvmx_iob_fau_timeout* %2 to %struct.TYPE_5__*
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @CVMX_IOB_FAU_TIMEOUT, align 4
  %85 = bitcast %union.cvmx_iob_fau_timeout* %2 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @cvmx_write_csr(i32 %84, i64 %86)
  br label %88

88:                                               ; preds = %78, %74
  %89 = load i32, i32* @OCTEON_CN68XX, align 4
  %90 = call i64 @OCTEON_IS_MODEL(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @OCTEON_CN7XXX, align 4
  %94 = call i64 @OCTEON_IS_MODEL(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92, %88
  %97 = load i32, i32* @OCTEON_CN70XX, align 4
  %98 = call i64 @OCTEON_IS_MODEL(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96, %92
  %101 = bitcast %union.cvmx_pow_nw_tim* %3 to i64*
  store i64 0, i64* %101, align 8
  %102 = bitcast %union.cvmx_pow_nw_tim* %3 to %struct.TYPE_6__*
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 3, i32* %103, align 8
  %104 = load i32, i32* @CVMX_POW_NW_TIM, align 4
  %105 = bitcast %union.cvmx_pow_nw_tim* %3 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @cvmx_write_csr(i32 %104, i64 %106)
  br label %108

108:                                              ; preds = %100, %96
  %109 = call i32 @write_octeon_c0_icacheerr(i32 0)
  %110 = call i32 @write_c0_derraddr1(i32 0)
  ret void
}

declare dso_local i32 @read_c0_cvmmemctl(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @write_c0_cvmmemctl(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @write_octeon_c0_icacheerr(i32) #1

declare dso_local i32 @write_c0_derraddr1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
