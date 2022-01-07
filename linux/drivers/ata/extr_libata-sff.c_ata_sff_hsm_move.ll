; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_hsm_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_hsm_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, i32 }
%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, %struct.ata_link* }
%struct.ata_link = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ata%u: protocol %d task_state %d (dev_stat 0x%X)\0A\00", align 1
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ST_FIRST: !(DRQ|ERR|DF)\00", align 1
@AC_ERR_HSM = common dso_local global i32 0, align 4
@ATA_HORKAGE_STUCK_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"ST_FIRST: DRQ=1 with device error, dev_stat 0x%X\00", align 1
@ATA_PROT_PIO = common dso_local global i32 0, align 4
@ATAPI_PROT_PIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"ST-ATAPI: DRQ=1 with device error, dev_stat 0x%X\00", align 1
@ATA_HORKAGE_DIAGNOSTIC = common dso_local global i32 0, align 4
@AC_ERR_NODEV_HINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"ST-ATA: DRQ=0 without device error, dev_stat 0x%X\00", align 1
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"ST-ATA: BUSY|DRQ persists on ERR|DF, dev_stat 0x%X\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"ata%u: dev %u command complete, drv_stat 0x%x\0A\00", align 1
@HSM_ST_IDLE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"ata%d: SFF host state machine in invalid state %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_hsm_move(%struct.ata_port* %0, %struct.ata_queued_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_link*, align 8
  %10 = alloca %struct.ata_eh_info*, align 8
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.ata_link*, %struct.ata_link** %15, align 8
  store %struct.ata_link* %16, %struct.ata_link** %9, align 8
  %17 = load %struct.ata_link*, %struct.ata_link** %9, align 8
  %18 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %17, i32 0, i32 0
  store %struct.ata_eh_info* %18, %struct.ata_eh_info** %10, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lockdep_assert_held(i32 %21)
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON_ONCE(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %34 = call i32 @ata_hsm_ok_in_wq(%struct.ata_port* %32, %struct.ata_queued_cmd* %33)
  %35 = icmp ne i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON_ONCE(i32 %36)
  br label %38

38:                                               ; preds = %318, %305, %287, %233, %183, %162, %151, %110, %90, %4
  %39 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i8*, i32, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %52 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %361 [
    i32 129, label %54
    i32 131, label %139
    i32 128, label %310
    i32 130, label %353
  ]

54:                                               ; preds = %38
  %55 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ATA_DRQ, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @unlikely(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ATA_ERR, align 4
  %71 = load i32, i32* @ATA_DF, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = call i32 @likely(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i32, i32* @AC_ERR_DEV, align 4
  %78 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %79 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %90

82:                                               ; preds = %68
  %83 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %84 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @AC_ERR_HSM, align 4
  %86 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %87 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %82, %76
  %91 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %92 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %91, i32 0, i32 0
  store i32 130, i32* %92, align 4
  br label %38

93:                                               ; preds = %54
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @ATA_ERR, align 4
  %96 = load i32, i32* @ATA_DF, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = call i32 @unlikely(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %93
  %102 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %103 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ATA_HORKAGE_STUCK_ERR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %101
  %111 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %111, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @AC_ERR_HSM, align 4
  %115 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %116 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %120 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %119, i32 0, i32 0
  store i32 130, i32* %120, align 4
  br label %38

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121, %93
  %123 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %124 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ATA_PROT_PIO, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %131 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %130, i32 0, i32 0
  store i32 131, i32* %131, align 4
  %132 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %133 = call i32 @ata_pio_sectors(%struct.ata_queued_cmd* %132)
  br label %138

134:                                              ; preds = %122
  %135 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %136 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %137 = call i32 @atapi_send_cdb(%struct.ata_port* %135, %struct.ata_queued_cmd* %136)
  br label %138

138:                                              ; preds = %134, %129
  br label %369

139:                                              ; preds = %38
  %140 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %141 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ATAPI_PROT_PIO, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %185

146:                                              ; preds = %139
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @ATA_DRQ, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %153 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %152, i32 0, i32 0
  store i32 128, i32* %153, align 4
  br label %38

154:                                              ; preds = %146
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @ATA_ERR, align 4
  %157 = load i32, i32* @ATA_DF, align 4
  %158 = or i32 %156, %157
  %159 = and i32 %155, %158
  %160 = call i32 @unlikely(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %154
  %163 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %163, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @AC_ERR_HSM, align 4
  %167 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %168 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %172 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %171, i32 0, i32 0
  store i32 130, i32* %172, align 4
  br label %38

173:                                              ; preds = %154
  %174 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %175 = call i32 @atapi_pio_bytes(%struct.ata_queued_cmd* %174)
  %176 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %177 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 130
  %180 = zext i1 %179 to i32
  %181 = call i32 @unlikely(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %38

184:                                              ; preds = %173
  br label %309

185:                                              ; preds = %139
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @ATA_DRQ, align 4
  %188 = and i32 %186, %187
  %189 = icmp eq i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @unlikely(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %236

193:                                              ; preds = %185
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @ATA_ERR, align 4
  %196 = load i32, i32* @ATA_DF, align 4
  %197 = or i32 %195, %196
  %198 = and i32 %194, %197
  %199 = call i32 @likely(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %193
  %202 = load i32, i32* @AC_ERR_DEV, align 4
  %203 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %204 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %208 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %207, i32 0, i32 2
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @ATA_HORKAGE_DIAGNOSTIC, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %201
  %216 = load i32, i32* @AC_ERR_NODEV_HINT, align 4
  %217 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %218 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %215, %201
  br label %233

222:                                              ; preds = %193
  %223 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %224 = load i32, i32* %7, align 4
  %225 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %223, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* @AC_ERR_HSM, align 4
  %227 = load i32, i32* @AC_ERR_NODEV_HINT, align 4
  %228 = or i32 %226, %227
  %229 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %230 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %222, %221
  %234 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %235 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %234, i32 0, i32 0
  store i32 130, i32* %235, align 4
  br label %38

236:                                              ; preds = %185
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @ATA_ERR, align 4
  %239 = load i32, i32* @ATA_DF, align 4
  %240 = or i32 %238, %239
  %241 = and i32 %237, %240
  %242 = call i32 @unlikely(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %290

244:                                              ; preds = %236
  %245 = load i32, i32* @AC_ERR_DEV, align 4
  %246 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %247 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  %250 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %251 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %244
  %258 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %259 = call i32 @ata_pio_sectors(%struct.ata_queued_cmd* %258)
  %260 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %261 = call i32 @ata_wait_idle(%struct.ata_port* %260)
  store i32 %261, i32* %7, align 4
  br label %262

262:                                              ; preds = %257, %244
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* @ATA_BUSY, align 4
  %265 = load i32, i32* @ATA_DRQ, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %263, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %262
  %270 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %271 = load i32, i32* %7, align 4
  %272 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %270, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* @AC_ERR_HSM, align 4
  %274 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %275 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %269, %262
  %279 = load i32, i32* %7, align 4
  %280 = icmp eq i32 %279, 127
  br i1 %280, label %281, label %287

281:                                              ; preds = %278
  %282 = load i32, i32* @AC_ERR_NODEV_HINT, align 4
  %283 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %284 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %281, %278
  %288 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %289 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %288, i32 0, i32 0
  store i32 130, i32* %289, align 4
  br label %38

290:                                              ; preds = %236
  %291 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %292 = call i32 @ata_pio_sectors(%struct.ata_queued_cmd* %291)
  %293 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %294 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 128
  br i1 %296, label %297, label %308

297:                                              ; preds = %290
  %298 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %299 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %297
  %306 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %307 = call i32 @ata_wait_idle(%struct.ata_port* %306)
  store i32 %307, i32* %7, align 4
  br label %38

308:                                              ; preds = %297, %290
  br label %309

309:                                              ; preds = %308, %184
  store i32 1, i32* %11, align 4
  br label %369

310:                                              ; preds = %38
  %311 = load i32, i32* %7, align 4
  %312 = call i32 @ata_ok(i32 %311)
  %313 = icmp ne i32 %312, 0
  %314 = xor i1 %313, true
  %315 = zext i1 %314 to i32
  %316 = call i32 @unlikely(i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %327

318:                                              ; preds = %310
  %319 = load i32, i32* %7, align 4
  %320 = call i32 @__ac_err_mask(i32 %319)
  %321 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %322 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  %325 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %326 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %325, i32 0, i32 0
  store i32 130, i32* %326, align 4
  br label %38

327:                                              ; preds = %310
  %328 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %329 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %332 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %331, i32 0, i32 2
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %7, align 4
  %337 = call i32 (i8*, i32, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %330, i32 %335, i32 %336)
  %338 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %339 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @AC_ERR_DEV, align 4
  %342 = load i32, i32* @AC_ERR_HSM, align 4
  %343 = or i32 %341, %342
  %344 = and i32 %340, %343
  %345 = call i32 @WARN_ON_ONCE(i32 %344)
  %346 = load i8*, i8** @HSM_ST_IDLE, align 8
  %347 = ptrtoint i8* %346 to i32
  %348 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %349 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 4
  %350 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %351 = load i32, i32* %8, align 4
  %352 = call i32 @ata_hsm_qc_complete(%struct.ata_queued_cmd* %350, i32 %351)
  store i32 0, i32* %11, align 4
  br label %369

353:                                              ; preds = %38
  %354 = load i8*, i8** @HSM_ST_IDLE, align 8
  %355 = ptrtoint i8* %354 to i32
  %356 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %357 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %356, i32 0, i32 0
  store i32 %355, i32* %357, align 4
  %358 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @ata_hsm_qc_complete(%struct.ata_queued_cmd* %358, i32 %359)
  store i32 0, i32* %11, align 4
  br label %369

361:                                              ; preds = %38
  store i32 0, i32* %11, align 4
  %362 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %363 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %366 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %364, i32 %367)
  br label %369

369:                                              ; preds = %361, %353, %327, %309, %138
  %370 = load i32, i32* %11, align 4
  ret i32 %370
}

declare dso_local i32 @lockdep_assert_held(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ata_hsm_ok_in_wq(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, ...) #1

declare dso_local i32 @ata_pio_sectors(%struct.ata_queued_cmd*) #1

declare dso_local i32 @atapi_send_cdb(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @atapi_pio_bytes(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

declare dso_local i32 @ata_ok(i32) #1

declare dso_local i32 @__ac_err_mask(i32) #1

declare dso_local i32 @ata_hsm_qc_complete(%struct.ata_queued_cmd*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
