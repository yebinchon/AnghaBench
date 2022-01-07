; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-spi.c_cvmx_spi_reset_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-spi.c_cvmx_spi_reset_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_spxx_dbg_deskew_ctl = type { i8* }
%union.cvmx_spxx_clk_ctl = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%union.cvmx_spxx_bist_stat = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64 }
%union.cvmx_spxx_int_msk = type { i8* }
%union.cvmx_stxx_int_msk = type { i8* }
%union.cvmx_spxx_trn4_ctl = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64 }
%union.cvmx_srxx_spi4_calx = type { i8* }
%union.cvmx_stxx_spi4_calx = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"ERROR SPI%d: BIST failed on receive datapath FIFO\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ERROR SPI%d: BIST failed on RX calendar table\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"ERROR SPI%d: BIST failed on TX calendar table\0A\00", align 1
@OCTEON_CN58XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_reset_cb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_spxx_dbg_deskew_ctl, align 8
  %6 = alloca %union.cvmx_spxx_clk_ctl, align 8
  %7 = alloca %union.cvmx_spxx_bist_stat, align 8
  %8 = alloca %union.cvmx_spxx_int_msk, align 8
  %9 = alloca %union.cvmx_stxx_int_msk, align 8
  %10 = alloca %union.cvmx_spxx_trn4_ctl, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.cvmx_srxx_spi4_calx, align 8
  %14 = alloca %union.cvmx_stxx_spi4_calx, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = call %struct.TYPE_12__* (...) @cvmx_sysinfo_get()
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @CVMX_SPXX_INT_MSK(i32 %19)
  %21 = call i8* @cvmx_read_csr(i32 %20)
  %22 = bitcast %union.cvmx_spxx_int_msk* %8 to i8**
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @CVMX_SPXX_INT_MSK(i32 %23)
  %25 = call i32 @cvmx_write_csr(i32 %24, i8* null)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @CVMX_STXX_INT_MSK(i32 %26)
  %28 = call i8* @cvmx_read_csr(i32 %27)
  %29 = bitcast %union.cvmx_stxx_int_msk* %9 to i8**
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CVMX_STXX_INT_MSK(i32 %30)
  %32 = call i32 @cvmx_write_csr(i32 %31, i8* null)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @CVMX_SRXX_COM_CTL(i32 %33)
  %35 = call i32 @cvmx_write_csr(i32 %34, i8* null)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @CVMX_STXX_COM_CTL(i32 %36)
  %38 = call i32 @cvmx_write_csr(i32 %37, i8* null)
  %39 = bitcast %union.cvmx_spxx_clk_ctl* %6 to i8**
  store i8* null, i8** %39, align 8
  %40 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @CVMX_SPXX_CLK_CTL(i32 %42)
  %44 = bitcast %union.cvmx_spxx_clk_ctl* %6 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @cvmx_write_csr(i32 %43, i8* %45)
  %47 = load i32, i32* %12, align 4
  %48 = mul nsw i32 10, %47
  %49 = call i32 @__delay(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @CVMX_SPXX_BIST_STAT(i32 %50)
  %52 = call i8* @cvmx_read_csr(i32 %51)
  %53 = bitcast %union.cvmx_spxx_bist_stat* %7 to i8**
  store i8* %52, i8** %53, align 8
  %54 = bitcast %union.cvmx_spxx_bist_stat* %7 to %struct.TYPE_7__*
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %2
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %2
  %62 = bitcast %union.cvmx_spxx_bist_stat* %7 to %struct.TYPE_7__*
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = bitcast %union.cvmx_spxx_bist_stat* %7 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %69
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 32
  br i1 %80, label %81, label %103

81:                                               ; preds = %78
  %82 = bitcast %union.cvmx_srxx_spi4_calx* %13 to i8**
  store i8* null, i8** %82, align 8
  %83 = bitcast %union.cvmx_srxx_spi4_calx* %13 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @CVMX_SRXX_SPI4_CALX(i32 %85, i32 %86)
  %88 = bitcast %union.cvmx_srxx_spi4_calx* %13 to i8**
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @cvmx_write_csr(i32 %87, i8* %89)
  %91 = bitcast %union.cvmx_stxx_spi4_calx* %14 to i8**
  store i8* null, i8** %91, align 8
  %92 = bitcast %union.cvmx_stxx_spi4_calx* %14 to %struct.TYPE_9__*
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @CVMX_STXX_SPI4_CALX(i32 %94, i32 %95)
  %97 = bitcast %union.cvmx_stxx_spi4_calx* %14 to i8**
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @cvmx_write_csr(i32 %96, i8* %98)
  br label %100

100:                                              ; preds = %81
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %78

103:                                              ; preds = %78
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @CVMX_SPXX_INT_REG(i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @CVMX_SPXX_INT_REG(i32 %106)
  %108 = call i8* @cvmx_read_csr(i32 %107)
  %109 = call i32 @cvmx_write_csr(i32 %105, i8* %108)
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @CVMX_SPXX_INT_MSK(i32 %110)
  %112 = bitcast %union.cvmx_spxx_int_msk* %8 to i8**
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @cvmx_write_csr(i32 %111, i8* %113)
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @CVMX_STXX_INT_REG(i32 %115)
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @CVMX_STXX_INT_REG(i32 %117)
  %119 = call i8* @cvmx_read_csr(i32 %118)
  %120 = call i32 @cvmx_write_csr(i32 %116, i8* %119)
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @CVMX_STXX_INT_MSK(i32 %121)
  %123 = bitcast %union.cvmx_stxx_int_msk* %9 to i8**
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @cvmx_write_csr(i32 %122, i8* %124)
  %126 = bitcast %union.cvmx_spxx_clk_ctl* %6 to i8**
  store i8* null, i8** %126, align 8
  %127 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 8
  store i64 0, i64* %128, align 8
  %129 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i32 16, i32* %130, align 4
  %131 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  %135 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  store i32 1, i32* %136, align 8
  %137 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 6
  store i64 0, i64* %138, align 8
  %139 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  store i64 0, i64* %140, align 8
  %141 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 4
  store i64 0, i64* %142, align 8
  %143 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  store i32 0, i32* %144, align 4
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @CVMX_SPXX_CLK_CTL(i32 %145)
  %147 = bitcast %union.cvmx_spxx_clk_ctl* %6 to i8**
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @cvmx_write_csr(i32 %146, i8* %148)
  %150 = load i32, i32* %12, align 4
  %151 = mul nsw i32 100, %150
  %152 = call i32 @__delay(i32 %151)
  %153 = bitcast %union.cvmx_spxx_clk_ctl* %6 to %struct.TYPE_10__*
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  store i32 1, i32* %154, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @CVMX_SPXX_CLK_CTL(i32 %155)
  %157 = bitcast %union.cvmx_spxx_clk_ctl* %6 to i8**
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @cvmx_write_csr(i32 %156, i8* %158)
  %160 = load i32, i32* %12, align 4
  %161 = mul nsw i32 100, %160
  %162 = call i32 @__delay(i32 %161)
  %163 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to %struct.TYPE_11__*
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 6
  store i64 0, i64* %164, align 8
  %165 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to %struct.TYPE_11__*
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to %struct.TYPE_11__*
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  store i32 1, i32* %168, align 4
  %169 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to %struct.TYPE_11__*
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 5
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* @OCTEON_CN58XX, align 4
  %172 = call i64 @OCTEON_IS_MODEL(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %103
  %175 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to %struct.TYPE_11__*
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  store i32 3, i32* %176, align 8
  br label %180

177:                                              ; preds = %103
  %178 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to %struct.TYPE_11__*
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i32 8, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %174
  %181 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to %struct.TYPE_11__*
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  %183 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to %struct.TYPE_11__*
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  store i32 1, i32* %184, align 8
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @CVMX_SPXX_TRN4_CTL(i32 %185)
  %187 = bitcast %union.cvmx_spxx_trn4_ctl* %10 to i8**
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @cvmx_write_csr(i32 %186, i8* %188)
  %190 = bitcast %union.cvmx_spxx_dbg_deskew_ctl* %5 to i8**
  store i8* null, i8** %190, align 8
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @CVMX_SPXX_DBG_DESKEW_CTL(i32 %191)
  %193 = bitcast %union.cvmx_spxx_dbg_deskew_ctl* %5 to i8**
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @cvmx_write_csr(i32 %192, i8* %194)
  ret i32 0
}

declare dso_local %struct.TYPE_12__* @cvmx_sysinfo_get(...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SPXX_INT_MSK(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_STXX_INT_MSK(i32) #1

declare dso_local i32 @CVMX_SRXX_COM_CTL(i32) #1

declare dso_local i32 @CVMX_STXX_COM_CTL(i32) #1

declare dso_local i32 @CVMX_SPXX_CLK_CTL(i32) #1

declare dso_local i32 @__delay(i32) #1

declare dso_local i32 @CVMX_SPXX_BIST_STAT(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @CVMX_SRXX_SPI4_CALX(i32, i32) #1

declare dso_local i32 @CVMX_STXX_SPI4_CALX(i32, i32) #1

declare dso_local i32 @CVMX_SPXX_INT_REG(i32) #1

declare dso_local i32 @CVMX_STXX_INT_REG(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_SPXX_TRN4_CTL(i32) #1

declare dso_local i32 @CVMX_SPXX_DBG_DESKEW_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
