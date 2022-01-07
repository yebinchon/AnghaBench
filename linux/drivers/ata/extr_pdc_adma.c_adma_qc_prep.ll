; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pdc_adma.c_adma_qc_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pdc_adma.c_adma_qc_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.adma_port_priv* }
%struct.adma_port_priv = type { i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@cVLD = common dso_local global i32 0, align 4
@cDAT = common dso_local global i32 0, align 4
@cIEN = common dso_local global i32 0, align 4
@ADMA_REGS_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ADMA_REGS_SECTOR_COUNT = common dso_local global i32 0, align 4
@ADMA_REGS_LBA_LOW = common dso_local global i32 0, align 4
@ADMA_REGS_LBA_MID = common dso_local global i32 0, align 4
@ADMA_REGS_LBA_HIGH = common dso_local global i32 0, align 4
@ADMA_REGS_CONTROL = common dso_local global i32 0, align 4
@rIGN = common dso_local global i32 0, align 4
@ADMA_REGS_COMMAND = common dso_local global i32 0, align 4
@rEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @adma_qc_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adma_qc_prep(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.adma_port_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %7 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.adma_port_priv*, %struct.adma_port_priv** %10, align 8
  store %struct.adma_port_priv* %11, %struct.adma_port_priv** %3, align 8
  %12 = load %struct.adma_port_priv*, %struct.adma_port_priv** %3, align 8
  %13 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.adma_port_priv*, %struct.adma_port_priv** %3, align 8
  %16 = getelementptr inbounds %struct.adma_port_priv, %struct.adma_port_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %19 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %21 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @adma_enter_reg_mode(%struct.TYPE_4__* %22)
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ATA_PROT_DMA, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %282

31:                                               ; preds = %1
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* @cVLD, align 4
  %43 = load i32, i32* @cDAT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @cIEN, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @cpu_to_le32(i64 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %6, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 0, i32* %83, align 4
  %84 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %85 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* @ADMA_REGS_DEVICE, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %100 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %167

106:                                              ; preds = %31
  %107 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %108 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load i32, i32* @ADMA_REGS_SECTOR_COUNT, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %116, i32* %121, align 4
  %122 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %123 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load i32, i32* @ADMA_REGS_LBA_LOW, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %138 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i32, i32* @ADMA_REGS_LBA_MID, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %153 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load i32, i32* @ADMA_REGS_LBA_HIGH, align 4
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %161, i32* %166, align 4
  br label %167

167:                                              ; preds = %106, %31
  %168 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %169 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %4, align 8
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* @ADMA_REGS_SECTOR_COUNT, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %184 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = load i32, i32* @ADMA_REGS_LBA_LOW, align 4
  %193 = load i32*, i32** %4, align 8
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %192, i32* %197, align 4
  %198 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %199 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 9
  %201 = load i32, i32* %200, align 8
  %202 = load i32*, i32** %4, align 8
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 %201, i32* %206, align 4
  %207 = load i32, i32* @ADMA_REGS_LBA_MID, align 4
  %208 = load i32*, i32** %4, align 8
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %214 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 10
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %4, align 8
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %216, i32* %221, align 4
  %222 = load i32, i32* @ADMA_REGS_LBA_HIGH, align 4
  %223 = load i32*, i32** %4, align 8
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 %222, i32* %227, align 4
  %228 = load i32*, i32** %4, align 8
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  store i32 0, i32* %232, align 4
  %233 = load i32, i32* @ADMA_REGS_CONTROL, align 4
  %234 = load i32*, i32** %4, align 8
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  store i32 %233, i32* %238, align 4
  %239 = load i32, i32* @rIGN, align 4
  %240 = load i32*, i32** %4, align 8
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %6, align 4
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 %239, i32* %244, align 4
  %245 = load i32*, i32** %4, align 8
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %6, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 0, i32* %249, align 4
  %250 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %251 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 11
  %253 = load i32, i32* %252, align 8
  %254 = load i32*, i32** %4, align 8
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %253, i32* %258, align 4
  %259 = load i32, i32* @ADMA_REGS_COMMAND, align 4
  %260 = load i32, i32* @rEND, align 4
  %261 = or i32 %259, %260
  %262 = load i32*, i32** %4, align 8
  %263 = load i32, i32* %6, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %6, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  store i32 %261, i32* %266, align 4
  %267 = load i32, i32* %6, align 4
  %268 = ashr i32 %267, 3
  %269 = sub nsw i32 %268, 2
  %270 = load i32*, i32** %4, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 3
  store i32 %269, i32* %271, align 4
  %272 = load i64, i64* %5, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %272, %274
  %276 = call i32 @cpu_to_le32(i64 %275)
  %277 = load i32*, i32** %4, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 8
  store i32 %276, i32* %278, align 4
  %279 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %280 = call i32 @adma_fill_sg(%struct.ata_queued_cmd* %279)
  store i32 %280, i32* %6, align 4
  %281 = call i32 (...) @wmb()
  br label %282

282:                                              ; preds = %167, %30
  ret void
}

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i32 @adma_enter_reg_mode(%struct.TYPE_4__*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @adma_fill_sg(%struct.ata_queued_cmd*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
