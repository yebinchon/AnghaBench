; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_init_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_init_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i64 }

@SAR_SRAM_TCT_128_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_TCT_128_TOP = common dso_local global i32 0, align 4
@SAR_SRAM_TCT_SIZE = common dso_local global i32 0, align 4
@SAR_SRAM_RCT_128_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_RCT_128_TOP = common dso_local global i32 0, align 4
@SAR_SRAM_RCT_SIZE = common dso_local global i32 0, align 4
@SAR_SRAM_RT_128_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_SCD_128_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_SCD_128_TOP = common dso_local global i32 0, align 4
@SAR_SRAM_SCD_SIZE = common dso_local global i32 0, align 4
@SAR_SRAM_TST1_128_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_TST2_128_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_TST1_128_TOP = common dso_local global i32 0, align 4
@SAR_SRAM_ABRSTD_128_BASE = common dso_local global i32 0, align 4
@SAR_ABRSTD_SIZE_8K = common dso_local global i32 0, align 4
@SAR_SRAM_FIFO_128_BASE = common dso_local global i32 0, align 4
@SAR_RXFD_SIZE_32K = common dso_local global i32 0, align 4
@SAR_SRAM_TCT_32_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_TCT_32_TOP = common dso_local global i32 0, align 4
@SAR_SRAM_RCT_32_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_RCT_32_TOP = common dso_local global i32 0, align 4
@SAR_SRAM_RT_32_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_SCD_32_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_SCD_32_TOP = common dso_local global i32 0, align 4
@SAR_SRAM_TST1_32_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_TST2_32_BASE = common dso_local global i32 0, align 4
@SAR_SRAM_TST1_32_TOP = common dso_local global i32 0, align 4
@SAR_SRAM_ABRSTD_32_BASE = common dso_local global i32 0, align 4
@SAR_ABRSTD_SIZE_1K = common dso_local global i32 0, align 4
@SAR_SRAM_FIFO_32_BASE = common dso_local global i32 0, align 4
@SAR_RXFD_SIZE_4K = common dso_local global i32 0, align 4
@SAR_RCTE_RAWCELLINTEN = common dso_local global i64 0, align 8
@SAR_FBQ0_LOW = common dso_local global i32 0, align 4
@SAR_FB_SIZE_0 = common dso_local global i32 0, align 4
@SAR_REG_FBQS0 = common dso_local global i32 0, align 4
@SAR_FBQ1_LOW = common dso_local global i32 0, align 4
@SAR_FB_SIZE_1 = common dso_local global i32 0, align 4
@SAR_REG_FBQS1 = common dso_local global i32 0, align 4
@SAR_FBQ2_LOW = common dso_local global i32 0, align 4
@SAR_FB_SIZE_2 = common dso_local global i32 0, align 4
@SAR_REG_FBQS2 = common dso_local global i32 0, align 4
@SAR_FBQ3_LOW = common dso_local global i32 0, align 4
@SAR_FB_SIZE_3 = common dso_local global i32 0, align 4
@SAR_REG_FBQS3 = common dso_local global i32 0, align 4
@log_to_rate = common dso_local global i32* null, align 8
@rate_to_log = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s: initialize rate table ...\0A\00", align 1
@SAR_REG_RTBL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: initialize TST ...\0A\00", align 1
@TSTE_OPC_VAR = common dso_local global i32 0, align 4
@TSTE_OPC_JMP = common dso_local global i32 0, align 4
@idt77252_sram_write_errors = common dso_local global i32 0, align 4
@SAR_REG_TSTB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: initialize ABRSTD ...\0A\00", align 1
@SAR_REG_ABRSTD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: initialize receive fifo ...\0A\00", align 1
@SAR_REG_RXFD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: SRAM initialization complete.\0A\00", align 1
@AIR = common dso_local global i32** null, align 8
@RDF = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*)* @init_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sram(%struct.idt77252_dev* %0) #0 {
  %2 = alloca %struct.idt77252_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 2
  %15 = call i32 @write_sram(%struct.idt77252_dev* %12, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %3, align 4
  br label %5

19:                                               ; preds = %5
  %20 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %21 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 524288
  br i1 %23, label %24, label %99

24:                                               ; preds = %19
  %25 = load i32, i32* @SAR_SRAM_TCT_128_BASE, align 4
  %26 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %27 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SAR_SRAM_TCT_128_TOP, align 4
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %35 = sdiv i32 %33, %34
  %36 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %37 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @SAR_SRAM_RCT_128_BASE, align 4
  %39 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %40 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @SAR_SRAM_RCT_128_TOP, align 4
  %42 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %43 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* @SAR_SRAM_RCT_SIZE, align 4
  %48 = sdiv i32 %46, %47
  %49 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %50 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @SAR_SRAM_RT_128_BASE, align 4
  %52 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %53 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @SAR_SRAM_SCD_128_BASE, align 4
  %55 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %56 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @SAR_SRAM_SCD_128_TOP, align 4
  %58 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %59 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @SAR_SRAM_SCD_SIZE, align 4
  %64 = sdiv i32 %62, %63
  %65 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %66 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @SAR_SRAM_TST1_128_BASE, align 4
  %68 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %69 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @SAR_SRAM_TST2_128_BASE, align 4
  %73 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %74 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @SAR_SRAM_TST1_128_TOP, align 4
  %78 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %79 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %78, i32 0, i32 8
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %77, %82
  %84 = add nsw i32 %83, 1
  %85 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %86 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @SAR_SRAM_ABRSTD_128_BASE, align 4
  %88 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %89 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @SAR_ABRSTD_SIZE_8K, align 4
  %91 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %92 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @SAR_SRAM_FIFO_128_BASE, align 4
  %94 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %95 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @SAR_RXFD_SIZE_32K, align 4
  %97 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %98 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 8
  br label %174

99:                                               ; preds = %19
  %100 = load i32, i32* @SAR_SRAM_TCT_32_BASE, align 4
  %101 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %102 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @SAR_SRAM_TCT_32_TOP, align 4
  %104 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %105 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %110 = sdiv i32 %108, %109
  %111 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %112 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @SAR_SRAM_RCT_32_BASE, align 4
  %114 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %115 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @SAR_SRAM_RCT_32_TOP, align 4
  %117 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %118 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* @SAR_SRAM_RCT_SIZE, align 4
  %123 = sdiv i32 %121, %122
  %124 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %125 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @SAR_SRAM_RT_32_BASE, align 4
  %127 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %128 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @SAR_SRAM_SCD_32_BASE, align 4
  %130 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %131 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @SAR_SRAM_SCD_32_TOP, align 4
  %133 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %134 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %132, %135
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* @SAR_SRAM_SCD_SIZE, align 4
  %139 = sdiv i32 %137, %138
  %140 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %141 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @SAR_SRAM_TST1_32_BASE, align 4
  %143 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %144 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %143, i32 0, i32 8
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* @SAR_SRAM_TST2_32_BASE, align 4
  %148 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %149 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %148, i32 0, i32 8
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* @SAR_SRAM_TST1_32_TOP, align 4
  %153 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %154 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %153, i32 0, i32 8
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %152, %157
  %159 = add nsw i32 %158, 1
  %160 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %161 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @SAR_SRAM_ABRSTD_32_BASE, align 4
  %163 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %164 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %163, i32 0, i32 10
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @SAR_ABRSTD_SIZE_1K, align 4
  %166 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %167 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %166, i32 0, i32 11
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @SAR_SRAM_FIFO_32_BASE, align 4
  %169 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %170 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %169, i32 0, i32 12
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @SAR_RXFD_SIZE_4K, align 4
  %172 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %173 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %172, i32 0, i32 13
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %99, %24
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %230, %174
  %176 = load i32, i32* %3, align 4
  %177 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %178 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %233

181:                                              ; preds = %175
  %182 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %185, 0
  %187 = call i32 @write_sram(%struct.idt77252_dev* %182, i32 %186, i32 0)
  %188 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %191 = mul nsw i32 %189, %190
  %192 = add nsw i32 %191, 1
  %193 = call i32 @write_sram(%struct.idt77252_dev* %188, i32 %192, i32 0)
  %194 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %197 = mul nsw i32 %195, %196
  %198 = add nsw i32 %197, 2
  %199 = call i32 @write_sram(%struct.idt77252_dev* %194, i32 %198, i32 0)
  %200 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %203 = mul nsw i32 %201, %202
  %204 = add nsw i32 %203, 3
  %205 = call i32 @write_sram(%struct.idt77252_dev* %200, i32 %204, i32 0)
  %206 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %207 = load i32, i32* %3, align 4
  %208 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 %209, 4
  %211 = call i32 @write_sram(%struct.idt77252_dev* %206, i32 %210, i32 0)
  %212 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %215 = mul nsw i32 %213, %214
  %216 = add nsw i32 %215, 5
  %217 = call i32 @write_sram(%struct.idt77252_dev* %212, i32 %216, i32 0)
  %218 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %221, 6
  %223 = call i32 @write_sram(%struct.idt77252_dev* %218, i32 %222, i32 0)
  %224 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %225 = load i32, i32* %3, align 4
  %226 = load i32, i32* @SAR_SRAM_TCT_SIZE, align 4
  %227 = mul nsw i32 %225, %226
  %228 = add nsw i32 %227, 7
  %229 = call i32 @write_sram(%struct.idt77252_dev* %224, i32 %228, i32 0)
  br label %230

230:                                              ; preds = %181
  %231 = load i32, i32* %3, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %3, align 4
  br label %175

233:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %282, %233
  %235 = load i32, i32* %3, align 4
  %236 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %237 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %285

240:                                              ; preds = %234
  %241 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %242 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %243 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %3, align 4
  %246 = load i32, i32* @SAR_SRAM_RCT_SIZE, align 4
  %247 = mul nsw i32 %245, %246
  %248 = add nsw i32 %244, %247
  %249 = load i64, i64* @SAR_RCTE_RAWCELLINTEN, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i32 @write_sram(%struct.idt77252_dev* %241, i32 %248, i32 %250)
  %252 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %253 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %254 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %3, align 4
  %257 = load i32, i32* @SAR_SRAM_RCT_SIZE, align 4
  %258 = mul nsw i32 %256, %257
  %259 = add nsw i32 %255, %258
  %260 = add nsw i32 %259, 1
  %261 = call i32 @write_sram(%struct.idt77252_dev* %252, i32 %260, i32 0)
  %262 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %263 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %264 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %3, align 4
  %267 = load i32, i32* @SAR_SRAM_RCT_SIZE, align 4
  %268 = mul nsw i32 %266, %267
  %269 = add nsw i32 %265, %268
  %270 = add nsw i32 %269, 2
  %271 = call i32 @write_sram(%struct.idt77252_dev* %262, i32 %270, i32 0)
  %272 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %273 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %274 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %3, align 4
  %277 = load i32, i32* @SAR_SRAM_RCT_SIZE, align 4
  %278 = mul nsw i32 %276, %277
  %279 = add nsw i32 %275, %278
  %280 = add nsw i32 %279, 3
  %281 = call i32 @write_sram(%struct.idt77252_dev* %272, i32 %280, i32 -1)
  br label %282

282:                                              ; preds = %240
  %283 = load i32, i32* %3, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %3, align 4
  br label %234

285:                                              ; preds = %234
  %286 = load i32, i32* @SAR_FBQ0_LOW, align 4
  %287 = shl i32 %286, 28
  %288 = load i32, i32* @SAR_FB_SIZE_0, align 4
  %289 = sdiv i32 %288, 48
  %290 = or i32 %287, %289
  %291 = load i32, i32* @SAR_REG_FBQS0, align 4
  %292 = call i32 @writel(i32 %290, i32 %291)
  %293 = load i32, i32* @SAR_FBQ1_LOW, align 4
  %294 = shl i32 %293, 28
  %295 = load i32, i32* @SAR_FB_SIZE_1, align 4
  %296 = sdiv i32 %295, 48
  %297 = or i32 %294, %296
  %298 = load i32, i32* @SAR_REG_FBQS1, align 4
  %299 = call i32 @writel(i32 %297, i32 %298)
  %300 = load i32, i32* @SAR_FBQ2_LOW, align 4
  %301 = shl i32 %300, 28
  %302 = load i32, i32* @SAR_FB_SIZE_2, align 4
  %303 = sdiv i32 %302, 48
  %304 = or i32 %301, %303
  %305 = load i32, i32* @SAR_REG_FBQS2, align 4
  %306 = call i32 @writel(i32 %304, i32 %305)
  %307 = load i32, i32* @SAR_FBQ3_LOW, align 4
  %308 = shl i32 %307, 28
  %309 = load i32, i32* @SAR_FB_SIZE_3, align 4
  %310 = sdiv i32 %309, 48
  %311 = or i32 %308, %310
  %312 = load i32, i32* @SAR_REG_FBQS3, align 4
  %313 = call i32 @writel(i32 %311, i32 %312)
  store i32 0, i32* %3, align 4
  br label %314

314:                                              ; preds = %330, %285
  %315 = load i32, i32* %3, align 4
  %316 = icmp slt i32 %315, 256
  br i1 %316, label %317, label %333

317:                                              ; preds = %314
  %318 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %319 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %320 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %3, align 4
  %323 = add nsw i32 %321, %322
  %324 = load i32*, i32** @log_to_rate, align 8
  %325 = load i32, i32* %3, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @write_sram(%struct.idt77252_dev* %318, i32 %323, i32 %328)
  br label %330

330:                                              ; preds = %317
  %331 = load i32, i32* %3, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %3, align 4
  br label %314

333:                                              ; preds = %314
  store i32 0, i32* %3, align 4
  br label %334

334:                                              ; preds = %385, %333
  %335 = load i32, i32* %3, align 4
  %336 = icmp slt i32 %335, 128
  br i1 %336, label %337, label %388

337:                                              ; preds = %334
  %338 = load i32*, i32** @rate_to_log, align 8
  %339 = load i32, i32* %3, align 4
  %340 = shl i32 %339, 2
  %341 = add nsw i32 %340, 0
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %338, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = shl i32 %344, 0
  store i32 %345, i32* %4, align 4
  %346 = load i32*, i32** @rate_to_log, align 8
  %347 = load i32, i32* %3, align 4
  %348 = shl i32 %347, 2
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %346, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = shl i32 %352, 8
  %354 = load i32, i32* %4, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %4, align 4
  %356 = load i32*, i32** @rate_to_log, align 8
  %357 = load i32, i32* %3, align 4
  %358 = shl i32 %357, 2
  %359 = add nsw i32 %358, 2
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %356, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = shl i32 %362, 16
  %364 = load i32, i32* %4, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %4, align 4
  %366 = load i32*, i32** @rate_to_log, align 8
  %367 = load i32, i32* %3, align 4
  %368 = shl i32 %367, 2
  %369 = add nsw i32 %368, 3
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %366, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = shl i32 %372, 24
  %374 = load i32, i32* %4, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %4, align 4
  %376 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %377 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %378 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, 256
  %381 = load i32, i32* %3, align 4
  %382 = add nsw i32 %380, %381
  %383 = load i32, i32* %4, align 4
  %384 = call i32 @write_sram(%struct.idt77252_dev* %376, i32 %382, i32 %383)
  br label %385

385:                                              ; preds = %337
  %386 = load i32, i32* %3, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %3, align 4
  br label %334

388:                                              ; preds = %334
  %389 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %390 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %389, i32 0, i32 15
  %391 = load i32, i32* %390, align 8
  %392 = call i32 @IPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %391)
  %393 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %394 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 4
  %396 = shl i32 %395, 2
  %397 = load i32, i32* @SAR_REG_RTBL, align 4
  %398 = call i32 @writel(i32 %396, i32 %397)
  %399 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %400 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %399, i32 0, i32 15
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @IPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %401)
  %403 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %404 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %403, i32 0, i32 9
  %405 = load i32, i32* %404, align 8
  %406 = sub nsw i32 %405, 2
  %407 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %408 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %407, i32 0, i32 14
  store i32 %406, i32* %408, align 4
  %409 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %410 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %409, i32 0, i32 8
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 0
  %413 = load i32, i32* %412, align 4
  store i32 %413, i32* %3, align 4
  br label %414

414:                                              ; preds = %432, %388
  %415 = load i32, i32* %3, align 4
  %416 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %417 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %416, i32 0, i32 8
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 0
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %422 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %421, i32 0, i32 9
  %423 = load i32, i32* %422, align 8
  %424 = add nsw i32 %420, %423
  %425 = sub nsw i32 %424, 2
  %426 = icmp slt i32 %415, %425
  br i1 %426, label %427, label %435

427:                                              ; preds = %414
  %428 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %429 = load i32, i32* %3, align 4
  %430 = load i32, i32* @TSTE_OPC_VAR, align 4
  %431 = call i32 @write_sram(%struct.idt77252_dev* %428, i32 %429, i32 %430)
  br label %432

432:                                              ; preds = %427
  %433 = load i32, i32* %3, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %3, align 4
  br label %414

435:                                              ; preds = %414
  %436 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %437 = load i32, i32* %3, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %3, align 4
  %439 = load i32, i32* @TSTE_OPC_JMP, align 4
  %440 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %441 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %440, i32 0, i32 8
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = shl i32 %444, 2
  %446 = or i32 %439, %445
  %447 = call i32 @write_sram(%struct.idt77252_dev* %436, i32 %437, i32 %446)
  store i32 1, i32* @idt77252_sram_write_errors, align 4
  %448 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %449 = load i32, i32* %3, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %3, align 4
  %451 = load i32, i32* @TSTE_OPC_JMP, align 4
  %452 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %453 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %452, i32 0, i32 8
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 1
  %456 = load i32, i32* %455, align 4
  %457 = shl i32 %456, 2
  %458 = or i32 %451, %457
  %459 = call i32 @write_sram(%struct.idt77252_dev* %448, i32 %449, i32 %458)
  store i32 0, i32* @idt77252_sram_write_errors, align 4
  %460 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %461 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %460, i32 0, i32 8
  %462 = load i32*, i32** %461, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 1
  %464 = load i32, i32* %463, align 4
  store i32 %464, i32* %3, align 4
  br label %465

465:                                              ; preds = %483, %435
  %466 = load i32, i32* %3, align 4
  %467 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %468 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %467, i32 0, i32 8
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %473 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %472, i32 0, i32 9
  %474 = load i32, i32* %473, align 8
  %475 = add nsw i32 %471, %474
  %476 = sub nsw i32 %475, 2
  %477 = icmp slt i32 %466, %476
  br i1 %477, label %478, label %486

478:                                              ; preds = %465
  %479 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %480 = load i32, i32* %3, align 4
  %481 = load i32, i32* @TSTE_OPC_VAR, align 4
  %482 = call i32 @write_sram(%struct.idt77252_dev* %479, i32 %480, i32 %481)
  br label %483

483:                                              ; preds = %478
  %484 = load i32, i32* %3, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %3, align 4
  br label %465

486:                                              ; preds = %465
  %487 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %488 = load i32, i32* %3, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %3, align 4
  %490 = load i32, i32* @TSTE_OPC_JMP, align 4
  %491 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %492 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %491, i32 0, i32 8
  %493 = load i32*, i32** %492, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 1
  %495 = load i32, i32* %494, align 4
  %496 = shl i32 %495, 2
  %497 = or i32 %490, %496
  %498 = call i32 @write_sram(%struct.idt77252_dev* %487, i32 %488, i32 %497)
  store i32 1, i32* @idt77252_sram_write_errors, align 4
  %499 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %500 = load i32, i32* %3, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %3, align 4
  %502 = load i32, i32* @TSTE_OPC_JMP, align 4
  %503 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %504 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %503, i32 0, i32 8
  %505 = load i32*, i32** %504, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 0
  %507 = load i32, i32* %506, align 4
  %508 = shl i32 %507, 2
  %509 = or i32 %502, %508
  %510 = call i32 @write_sram(%struct.idt77252_dev* %499, i32 %500, i32 %509)
  store i32 0, i32* @idt77252_sram_write_errors, align 4
  %511 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %512 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %511, i32 0, i32 16
  store i64 0, i64* %512, align 8
  %513 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %514 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %513, i32 0, i32 8
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 0
  %517 = load i32, i32* %516, align 4
  %518 = shl i32 %517, 2
  %519 = load i32, i32* @SAR_REG_TSTB, align 4
  %520 = call i32 @writel(i32 %518, i32 %519)
  %521 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %522 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %521, i32 0, i32 15
  %523 = load i32, i32* %522, align 8
  %524 = call i32 @IPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %523)
  %525 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %526 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %525, i32 0, i32 11
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %529 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %528, i32 0, i32 10
  %530 = load i32, i32* %529, align 4
  %531 = shl i32 %530, 2
  %532 = or i32 %527, %531
  %533 = load i32, i32* @SAR_REG_ABRSTD, align 4
  %534 = call i32 @writel(i32 %532, i32 %533)
  %535 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %536 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %535, i32 0, i32 15
  %537 = load i32, i32* %536, align 8
  %538 = call i32 @IPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %537)
  %539 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %540 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %539, i32 0, i32 13
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %543 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %542, i32 0, i32 12
  %544 = load i32, i32* %543, align 4
  %545 = shl i32 %544, 2
  %546 = or i32 %541, %545
  %547 = load i32, i32* @SAR_REG_RXFD, align 4
  %548 = call i32 @writel(i32 %546, i32 %547)
  %549 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %550 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %549, i32 0, i32 15
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @IPRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %551)
  ret void
}

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @IPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
