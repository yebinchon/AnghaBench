; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ftide010.c_ftide010_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ftide010.c_ftide010_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.ata_device*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ftide010* }
%struct.ftide010 = type { i32, i32 }
%struct.ata_device = type { i32, i32 }

@FTIDE010_CLK_MOD_DEV0_UDMA_EN = common dso_local global i32 0, align 4
@FTIDE010_CLK_MOD_DEV0_CLK_SEL = common dso_local global i32 0, align 4
@FTIDE010_CLK_MOD_DEV1_UDMA_EN = common dso_local global i32 0, align 4
@FTIDE010_CLK_MOD_DEV1_CLK_SEL = common dso_local global i32 0, align 4
@FTIDE010_CLK_MOD = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set UDMA mode %02x, index %d\0A\00", align 1
@set_udma_66_mhz = common dso_local global i64* null, align 8
@udma_66_setup_time = common dso_local global i32* null, align 8
@udma_66_hold_time = common dso_local global i32* null, align 8
@udma_50_setup_time = common dso_local global i32* null, align 8
@udma_50_hold_time = common dso_local global i32* null, align 8
@FTIDE010_UDMA_TIMING_MODE_56 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"UDMA write clkreg = %02x, timreg = %02x\0A\00", align 1
@FTIDE010_UDMA_TIMING0 = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"set MWDMA mode %02x, index %d\0A\00", align 1
@set_mdma_66_mhz = common dso_local global i64* null, align 8
@mwdma_66_active_time = common dso_local global i32* null, align 8
@mwdma_66_recovery_time = common dso_local global i32* null, align 8
@mwdma_50_active_time = common dso_local global i32* null, align 8
@mwdma_50_recovery_time = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"MWDMA write clkreg = %02x, timreg = %02x\0A\00", align 1
@FTIDE010_MWDMA_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @ftide010_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftide010_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ftide010*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ftide010*, %struct.ftide010** %16, align 8
  store %struct.ftide010* %17, %struct.ftide010** %5, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @FTIDE010_CLK_MOD_DEV0_UDMA_EN, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @FTIDE010_CLK_MOD_DEV0_CLK_SEL, align 4
  store i32 %29, i32* %9, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @FTIDE010_CLK_MOD_DEV1_UDMA_EN, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @FTIDE010_CLK_MOD_DEV1_CLK_SEL, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %35 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FTIDE010_CLK_MOD, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @readb(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @XFER_UDMA_0, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %131

52:                                               ; preds = %33
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @XFER_UDMA_0, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %58 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i64*, i64** @set_udma_66_mhz, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %52
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** @udma_66_setup_time, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 4
  %82 = load i32*, i32** @udma_66_hold_time, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %81, %86
  store i32 %87, i32* %11, align 4
  br label %101

88:                                               ; preds = %52
  %89 = load i32*, i32** @udma_50_setup_time, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 4
  %95 = load i32*, i32** @udma_50_hold_time, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %94, %99
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %88, %72
  %102 = load i32, i32* %12, align 4
  %103 = icmp sge i32 %102, 5
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* @FTIDE010_UDMA_TIMING_MODE_56, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %110 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %117 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @FTIDE010_CLK_MOD, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @writeb(i32 %115, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %124 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FTIDE010_UDMA_TIMING0, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i32 @writeb(i32 %122, i32 %129)
  br label %198

131:                                              ; preds = %33
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @XFER_MW_DMA_0, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  store i32 %135, i32* %12, align 4
  %136 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %137 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @dev_dbg(i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load i64*, i64** @set_mdma_66_mhz, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %131
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32*, i32** @mwdma_66_active_time, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 4
  %158 = load i32*, i32** @mwdma_66_recovery_time, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %157, %162
  store i32 %163, i32* %11, align 4
  br label %177

164:                                              ; preds = %131
  %165 = load i32*, i32** @mwdma_50_active_time, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 4
  %171 = load i32*, i32** @mwdma_50_recovery_time, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %170, %175
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %164, %148
  %178 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %179 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @dev_dbg(i32 %180, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %186 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @FTIDE010_CLK_MOD, align 4
  %189 = add nsw i32 %187, %188
  %190 = call i32 @writeb(i32 %184, i32 %189)
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %193 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @FTIDE010_MWDMA_TIMING, align 4
  %196 = add nsw i32 %194, %195
  %197 = call i32 @writeb(i32 %191, i32 %196)
  br label %198

198:                                              ; preds = %177, %108
  %199 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %200 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %201 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %200, i32 0, i32 0
  store %struct.ata_device* %199, %struct.ata_device** %201, align 8
  ret void
}

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
