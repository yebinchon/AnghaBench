; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-spi.c_cvmx_spi_clock_detect_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-spi.c_cvmx_spi_clock_detect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_spxx_clk_stat = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"SPI%d: Waiting to see TsClk...\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SPI%d: Timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"SPI%d: Waiting to see RsClk...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_clock_detect_cb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_spxx_clk_stat, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call %struct.TYPE_4__* (...) @cvmx_sysinfo_get()
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 1000
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i64 (...) @cvmx_get_cycle()
  %20 = load i64, i64* %11, align 8
  %21 = mul i64 1000, %20
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %21, %23
  %25 = add i64 %19, %24
  store i64 %25, i64* %10, align 8
  store i32 100, i32* %8, align 4
  br label %26

26:                                               ; preds = %73, %3
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @CVMX_SPXX_CLK_STAT(i32 %27)
  %29 = call i8* @cvmx_read_csr(i32 %28)
  %30 = bitcast %union.cvmx_spxx_clk_stat* %9 to i8**
  store i8* %29, i8** %30, align 8
  %31 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %26
  %36 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @CVMX_SPXX_CLK_STAT(i32 %46)
  %48 = bitcast %union.cvmx_spxx_clk_stat* %9 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @cvmx_write_csr(i32 %47, i8* %49)
  %51 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %43, %40, %35, %26
  %56 = call i64 (...) @cvmx_get_cycle()
  %57 = load i64, i64* %10, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %4, align 4
  br label %135

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i1 [ true, %63 ], [ %72, %68 ]
  br i1 %74, label %26, label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = call i64 (...) @cvmx_get_cycle()
  %79 = load i64, i64* %11, align 8
  %80 = mul i64 1000, %79
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %80, %82
  %84 = add i64 %78, %83
  store i64 %84, i64* %10, align 8
  store i32 100, i32* %8, align 4
  br label %85

85:                                               ; preds = %132, %75
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @CVMX_SPXX_CLK_STAT(i32 %86)
  %88 = call i8* @cvmx_read_csr(i32 %87)
  %89 = bitcast %union.cvmx_spxx_clk_stat* %9 to i8**
  store i8* %88, i8** %89, align 8
  %90 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %85
  %95 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @CVMX_SPXX_CLK_STAT(i32 %105)
  %107 = bitcast %union.cvmx_spxx_clk_stat* %9 to i8**
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @cvmx_write_csr(i32 %106, i8* %108)
  %110 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %102, %99, %94, %85
  %115 = call i64 (...) @cvmx_get_cycle()
  %116 = load i64, i64* %10, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  store i32 -1, i32* %4, align 4
  br label %135

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121
  %123 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = bitcast %union.cvmx_spxx_clk_stat* %9 to %struct.TYPE_3__*
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi i1 [ true, %122 ], [ %131, %127 ]
  br i1 %133, label %85, label %134

134:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %118, %59
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_4__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i64 @cvmx_get_cycle(...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SPXX_CLK_STAT(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
