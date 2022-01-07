; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-spi.c_cvmx_spi_training_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-spi.c_cvmx_spi_training_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_spxx_trn4_ctl = type { i8* }
%union.cvmx_spxx_clk_stat = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.cvmx_spxx_clk_ctl = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"SPI%d: Waiting for training\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SPI%d: Timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_training_cb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.cvmx_spxx_trn4_ctl, align 8
  %9 = alloca %union.cvmx_spxx_clk_stat, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.cvmx_spxx_clk_ctl, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = call %struct.TYPE_8__* (...) @cvmx_sysinfo_get()
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 1000
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = call i64 (...) @cvmx_get_cycle()
  %20 = load i64, i64* %10, align 8
  %21 = mul i64 1000, %20
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %21, %23
  %25 = add i64 %19, %24
  store i64 %25, i64* %11, align 8
  %26 = bitcast %union.cvmx_spxx_clk_ctl* %13 to i8**
  store i8* null, i8** %26, align 8
  %27 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  %29 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32 1, i32* %40, align 4
  %41 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i32 1, i32* %42, align 8
  %43 = bitcast %union.cvmx_spxx_clk_ctl* %13 to %struct.TYPE_5__*
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @CVMX_SPXX_CLK_CTL(i32 %45)
  %47 = bitcast %union.cvmx_spxx_clk_ctl* %13 to i8**
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @cvmx_write_csr(i32 %46, i8* %48)
  %50 = load i64, i64* %10, align 8
  %51 = mul i64 1000, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @__delay(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @CVMX_SPXX_TRN4_CTL(i32 %54)
  %56 = call i8* @cvmx_read_csr(i32 %55)
  %57 = bitcast %union.cvmx_spxx_trn4_ctl* %8 to i8**
  store i8* %56, i8** %57, align 8
  %58 = bitcast %union.cvmx_spxx_trn4_ctl* %8 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @CVMX_SPXX_TRN4_CTL(i32 %60)
  %62 = bitcast %union.cvmx_spxx_trn4_ctl* %8 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @cvmx_write_csr(i32 %61, i8* %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* %10, align 8
  %68 = mul i64 1000, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @__delay(i32 %69)
  %71 = call i64 (...) @cvmx_get_cycle()
  %72 = load i64, i64* %10, align 8
  %73 = mul i64 1000, %72
  %74 = mul i64 %73, 600
  %75 = add i64 %71, %74
  store i64 %75, i64* %11, align 8
  store i32 500, i32* %12, align 4
  br label %76

76:                                               ; preds = %106, %3
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @CVMX_SPXX_CLK_STAT(i32 %77)
  %79 = call i8* @cvmx_read_csr(i32 %78)
  %80 = bitcast %union.cvmx_spxx_clk_stat* %9 to i8**
  store i8* %79, i8** %80, align 8
  %81 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_7__*
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @CVMX_SPXX_CLK_STAT(i32 %91)
  %93 = bitcast %union.cvmx_spxx_clk_stat* %9 to i8**
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @cvmx_write_csr(i32 %92, i8* %94)
  %96 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_7__*
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %88, %85, %76
  %99 = call i64 (...) @cvmx_get_cycle()
  %100 = load i64, i64* %11, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  store i32 -1, i32* %4, align 4
  br label %112

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105
  %107 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_7__*
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %76, label %111

111:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_8__* @cvmx_sysinfo_get(...) #1

declare dso_local i64 @cvmx_get_cycle(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_SPXX_CLK_CTL(i32) #1

declare dso_local i32 @__delay(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SPXX_TRN4_CTL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @CVMX_SPXX_CLK_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
